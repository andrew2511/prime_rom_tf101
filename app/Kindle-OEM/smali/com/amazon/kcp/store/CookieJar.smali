.class public Lcom/amazon/kcp/store/CookieJar;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field private static final DEFAULT_HTTPS_PORT:I = 0x1bb

.field private static final DEFAULT_HTTP_PORT:I = 0x50

.field static final EXPIRATION_BUFFER:J = 0x5265c00L

.field public static final STORE_CREDENTIAL_COOKIES:Ljava/lang/String; = "store_cookies"

.field public static final STORE_SESSION_COOKIES:Ljava/lang/String; = "store_session_cookies"

.field private static final URL_REGEX:Ljava/lang/String; = "https?://www\\..*"


# instance fields
.field private final context:Landroid/content/Context;

.field private forceUSDomainIfPossible:Z

.field private final secureStorage:Lcom/amazon/kcp/application/ISecureStorage;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/ISecureStorage;Landroid/content/Context;)V
    .locals 2
    .parameter "secureStorage"
    .parameter "context"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    .line 192
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "secureStorage cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    .line 198
    if-nez p2, :cond_1

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    iput-object p2, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    .line 203
    return-void
.end method

.method public static areCookiesValid(Ljava/util/Map;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 95
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookies cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/amazon/kcp/store/CookieJar;->parseCookies(Ljava/util/Map;)Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/cookie/Cookie;

    .line 121
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v6

    .line 128
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    move v0, v6

    goto :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeCookieUrlDomainToUS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cookieUrl"

    .prologue
    .line 591
    const-string v0, "amazon.*$"

    const-string v1, "amazon.com/"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changeCookieValueDomainToUS(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cookieValue"

    .prologue
    .line 597
    const-string v0, "domain=.amazon[^;]*;"

    const-string v1, "domain=.amazon.com;"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseCookies(Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 181
    :goto_0
    return-object v0

    .line 148
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    new-instance v3, Lorg/apache/http/impl/cookie/RFC2109Spec;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>()V

    .line 150
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v5, "https"

    const-string v6, ""

    invoke-direct {v1, v5, v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    new-instance v5, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x1bb

    :goto_2
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v1, v8}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 169
    :try_start_1
    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "Set-Cookie"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v7, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v5}, Lorg/apache/http/impl/cookie/RFC2109Spec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    :try_end_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 178
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse url for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    throw v1

    .line 165
    :cond_1
    const/16 v7, 0x50

    goto :goto_2

    .line 171
    :catch_1
    move-exception v1

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse cookie for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with cookie: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    throw v1

    :cond_2
    move-object v0, v2

    .line 181
    goto/16 :goto_0
.end method

.method static validateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 530
    if-eqz p0, :cond_0

    const-string v0, "https?://www\\..*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 536
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areCookiesValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "cookiesName"

    .prologue
    .line 508
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cookiesName cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 513
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 514
    .local v0, cookies:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    :cond_1
    const/4 v1, 0x0

    .line 519
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/util/Map;)Z

    move-result v1

    goto :goto_0
.end method

.method public clearCookieJar()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 461
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 467
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 468
    return-void
.end method

.method public getCookies(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookiesName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 375
    iget-object v1, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 383
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 392
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 394
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 399
    :try_start_1
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 407
    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing json cookie string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_1
    :goto_1
    return-object v0

    .line 403
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find cookie for url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", not adding cookie to set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 415
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getParsedCookies(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 433
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 434
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-static {v1}, Lcom/amazon/kcp/store/CookieJar;->parseCookies(Ljava/util/Map;)Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 445
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    .line 441
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public initializeCookiesFromSecureStorage(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookiesName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->getCookies(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 333
    :cond_1
    const/4 v0, 0x0

    .line 352
    :goto_0
    return v0

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 339
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 342
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 344
    invoke-static {p0}, Lcom/amazon/kcp/store/CookieJar;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 346
    invoke-virtual {v1, v3, p0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 352
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeCookies(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 482
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookiesName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/CookieJar;->clearCookieJar()V

    .line 490
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/ISecureStorage;->removeItemWithKey(Ljava/lang/String;)Z

    .line 491
    return-void
.end method

.method public saveCookiesToSecureStorageAndJar(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 226
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cookiesName cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 303
    :goto_0
    return v0

    .line 237
    :cond_2
    invoke-static {p2}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 239
    goto :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 244
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    .line 247
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 250
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-static {v0}, Lcom/amazon/kcp/store/CookieJar;->validateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->shouldForceUSDomain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 259
    invoke-direct {p0, v1}, Lcom/amazon/kcp/store/CookieJar;->changeCookieUrlDomainToUS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 261
    invoke-direct {p0, v0}, Lcom/amazon/kcp/store/CookieJar;->changeCookieValueDomainToUS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 263
    invoke-virtual {v2, v5, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    .line 272
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/CookieJar;->shouldForceUSDomain(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_6

    .line 278
    :try_start_1
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :goto_3
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v1, ""

    :goto_4
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error saving cookie: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {v2, v1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    move-object v6, v9

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v1, v9

    goto :goto_3

    .line 285
    :cond_5
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v8, 0x2c

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 290
    :cond_6
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 300
    :cond_7
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/store/CookieJar;->secureStorage:Lcom/amazon/kcp/application/ISecureStorage;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public setUSDomainForcing(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 579
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    if-eqz v0, :cond_0

    .line 581
    iput-boolean v1, p0, Lcom/amazon/kcp/store/CookieJar;->forceUSDomainIfPossible:Z

    .line 582
    const-string v0, "store_cookies"

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/store/CookieJar;->removeCookies(Ljava/lang/String;)V

    .line 583
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public shouldForceUSDomain(Ljava/lang/String;)Z
    .locals 1
    .parameter "cookiesName"

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method
