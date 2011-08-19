.class public abstract Lcom/github/droidfu/http/BetterHttpRequest;
.super Ljava/lang/Object;
.source "BetterHttpRequest.java"


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field protected static final HTTP_CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field protected static final HTTP_USER_AGENT:Ljava/lang/String; = "Android/DroidFu"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MAX_CONNECTIONS:I = 0x6

.field private static final MAX_RETRIES:I = 0x5

.field private static final REQUEST_URI_BACKUP:Ljava/lang/String; = "request_uri_backup"

.field private static final RETRY_SLEEP_TIME_MILLIS:I = 0xbb8

.field private static appContext:Landroid/content/Context;

.field private static defaultHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;


# instance fields
.field private expectedStatusCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oauthConsumer:Loauth/signpost/OAuthConsumer;

.field protected request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private responseHandler:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<",
            "Lcom/github/droidfu/http/BetterHttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/github/droidfu/http/BetterHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/droidfu/http/BetterHttpRequest;->LOG_TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/github/droidfu/http/BetterHttpRequest;->defaultHeaders:Ljava/util/HashMap;

    .line 81
    invoke-static {}, Lcom/github/droidfu/http/BetterHttpRequest;->setupHttpClient()V

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->expectedStatusCodes:Ljava/util/List;

    .line 95
    new-instance v0, Lcom/github/droidfu/http/BetterHttpRequest$1;

    invoke-direct {v0, p0}, Lcom/github/droidfu/http/BetterHttpRequest$1;-><init>(Lcom/github/droidfu/http/BetterHttpRequest;)V

    iput-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    .line 112
    new-instance v0, Lcom/github/droidfu/http/BetterHttpRequest$2;

    invoke-direct {v0, p0}, Lcom/github/droidfu/http/BetterHttpRequest$2;-><init>(Lcom/github/droidfu/http/BetterHttpRequest;)V

    iput-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/github/droidfu/http/BetterHttpRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->expectedStatusCodes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/droidfu/http/BetterHttpRequest;)Loauth/signpost/OAuthConsumer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/github/droidfu/http/BetterHttpRequest;
    .locals 2
    .parameter "url"

    .prologue
    .line 207
    new-instance v0, Lcom/github/droidfu/http/HttpGet;

    sget-object v1, Lcom/github/droidfu/http/BetterHttpRequest;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/github/droidfu/http/HttpGet;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/github/droidfu/http/BetterHttpRequest;
    .locals 2
    .parameter "url"
    .parameter "payload"

    .prologue
    .line 211
    new-instance v0, Lcom/github/droidfu/http/HttpPost;

    sget-object v1, Lcom/github/droidfu/http/BetterHttpRequest;->defaultHeaders:Ljava/util/HashMap;

    invoke-direct {v0, p0, p1, v1}, Lcom/github/droidfu/http/HttpPost;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 189
    sget-object v0, Lcom/github/droidfu/http/BetterHttpRequest;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/github/droidfu/http/BetterHttpRequest;->appContext:Landroid/content/Context;

    .line 193
    new-instance v0, Lcom/github/droidfu/http/ConnectionChangedBroadcastReceiver;

    invoke-direct {v0}, Lcom/github/droidfu/http/ConnectionChangedBroadcastReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setDefaultHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 203
    sget-object v0, Lcom/github/droidfu/http/BetterHttpRequest;->defaultHeaders:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method

.method public static setPortForScheme(Ljava/lang/String;I)V
    .locals 2
    .parameter "scheme"
    .parameter "port"

    .prologue
    .line 198
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 199
    .local v0, _scheme:Lorg/apache/http/conn/scheme/Scheme;
    sget-object v1, Lcom/github/droidfu/http/BetterHttpRequest;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 200
    return-void
.end method

.method private static setupHttpClient()V
    .locals 7

    .prologue
    const/4 v5, 0x6

    .line 151
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 153
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    const-wide/16 v3, 0x2710

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 154
    new-instance v3, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v3, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 156
    invoke-static {v1, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 157
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 158
    const-string v3, "Android/DroidFu"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 160
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 161
    .local v2, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 162
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 164
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 165
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v3, Lcom/github/droidfu/http/BetterHttpRequest;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 166
    return-void
.end method

.method public static updateProxySettings(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 169
    sget-object v6, Lcom/github/droidfu/http/BetterHttpRequest;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v6}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 170
    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 172
    .local v2, nwInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-nez v6, :cond_2

    .line 176
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, proxyHost:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v5

    .line 178
    .local v5, proxyPort:I
    if-eqz v4, :cond_0

    const/4 v6, -0x1

    if-le v5, v6, :cond_0

    .line 179
    sget-object v6, Lcom/github/droidfu/http/BetterHttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Detected carrier proxy "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v3, Lorg/apache/http/HttpHost;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 181
    .local v3, proxy:Lorg/apache/http/HttpHost;
    const-string v6, "http.route.default-proxy"

    invoke-interface {v1, v6, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0

    .line 184
    .end local v3           #proxy:Lorg/apache/http/HttpHost;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :cond_2
    const-string v6, "http.route.default-proxy"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    goto :goto_0
.end method

.method private waitAndContinue(Ljava/lang/Exception;II)V
    .locals 4
    .parameter "cause"
    .parameter "numAttempts"
    .parameter "maxAttempts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 262
    if-ne p2, p3, :cond_0

    .line 263
    sget-object v1, Lcom/github/droidfu/http/BetterHttpRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request failed after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attempts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Ljava/net/ConnectException;

    invoke-direct {v0}, Ljava/net/ConnectException;-><init>()V

    .line 265
    .local v0, ex:Ljava/net/ConnectException;
    invoke-virtual {v0, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 266
    throw v0

    .line 268
    .end local v0           #ex:Ljava/net/ConnectException;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    sget-object v1, Lcom/github/droidfu/http/BetterHttpRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "request failed, will retry after 3 secs..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public varargs expecting([Ljava/lang/Integer;)Lcom/github/droidfu/http/BetterHttpRequest;
    .locals 1
    .parameter "statusCodes"

    .prologue
    .line 219
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->expectedStatusCodes:Ljava/util/List;

    .line 220
    return-object p0
.end method

.method public send()Lcom/github/droidfu/http/BetterHttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    .line 231
    sget-object v4, Lcom/github/droidfu/http/BetterHttpRequest;->appContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 232
    sget-object v4, Lcom/github/droidfu/http/BetterHttpRequest;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/github/droidfu/http/BetterHttpRequest;->updateProxySettings(Landroid/content/Context;)V

    .line 234
    :cond_0
    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 238
    .local v2, httpContext:Lorg/apache/http/protocol/HttpContext;
    const-string v4, "request_uri_backup"

    iget-object v5, p0, Lcom/github/droidfu/http/BetterHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    sget-object v4, Lcom/github/droidfu/http/BetterHttpRequest;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v5, p0, Lcom/github/droidfu/http/BetterHttpRequest;->retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 242
    const/4 v3, 0x0

    .line 244
    .local v3, numAttempts:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 246
    add-int/lit8 v3, v3, 0x1

    .line 249
    :try_start_0
    iget-object v4, p0, Lcom/github/droidfu/http/BetterHttpRequest;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    if-eqz v4, :cond_1

    .line 250
    iget-object v4, p0, Lcom/github/droidfu/http/BetterHttpRequest;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    iget-object v5, p0, Lcom/github/droidfu/http/BetterHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4, v5}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 252
    :cond_1
    sget-object v4, Lcom/github/droidfu/http/BetterHttpRequest;->httpClient:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v5, p0, Lcom/github/droidfu/http/BetterHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v6, p0, Lcom/github/droidfu/http/BetterHttpRequest;->responseHandler:Lorg/apache/http/client/ResponseHandler;

    invoke-virtual {v4, v5, v6, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/github/droidfu/http/BetterHttpResponse;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local p0
    move-object v4, p0

    .line 257
    :goto_1
    return-object v4

    .line 253
    .restart local p0
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 254
    .local v1, e:Ljava/lang/Exception;
    invoke-direct {p0, v1, v3, v7}, Lcom/github/droidfu/http/BetterHttpRequest;->waitAndContinue(Ljava/lang/Exception;II)V

    goto :goto_0

    .line 257
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public signed(Loauth/signpost/OAuthConsumer;)Lcom/github/droidfu/http/BetterHttpRequest;
    .locals 1
    .parameter "oauthConsumer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;
        }
    .end annotation

    .prologue
    .line 225
    iput-object p1, p0, Lcom/github/droidfu/http/BetterHttpRequest;->oauthConsumer:Loauth/signpost/OAuthConsumer;

    .line 226
    invoke-virtual {p0}, Lcom/github/droidfu/http/BetterHttpRequest;->unwrap()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {p1, v0}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 227
    return-object p0
.end method

.method public unwrap()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/github/droidfu/http/BetterHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method
