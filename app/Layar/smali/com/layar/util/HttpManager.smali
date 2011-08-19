.class public Lcom/layar/util/HttpManager;
.super Ljava/lang/Object;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/HttpManager$HttpTask;,
        Lcom/layar/util/HttpManager$ResponseHandler;
    }
.end annotation


# static fields
.field private static final HEADER_BRAND:Ljava/lang/String; = "X-Layar-Brand"

.field public static final HEADER_COOKIE:Ljava/lang/String; = "X-Layar-Dev-Cookies"

.field private static final HEADER_MODEL:Ljava/lang/String; = "X-Layar-Model"

.field private static final HEADER_OPERATOR:Ljava/lang/String; = "X-Layar-Operator"

.field private static final HEADER_OS:Ljava/lang/String; = "X-Layar-OS"

.field private static final HEADER_OS_VERSION:Ljava/lang/String; = "X-Layar-OS-Version"

.field private static final HEADER_VERSION:Ljava/lang/String; = "X-Layar-Version"

.field private static final TAG:Ljava/lang/String;

.field private static final sBrand:Lorg/apache/http/Header;

.field private static final sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static final sEncoding:Lorg/apache/http/Header;

.field private static final sModel:Lorg/apache/http/Header;

.field private static final sOperator:Lorg/apache/http/Header;

.field private static final sOs:Lorg/apache/http/Header;

.field private static final sOsVersion:Lorg/apache/http/Header;

.field private static final sVersion:Lorg/apache/http/Header;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v6, 0x4e20

    const/4 v9, 0x1

    .line 71
    const-class v5, Lcom/layar/util/HttpManager;

    invoke-static {v5}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/layar/util/HttpManager;->TAG:Ljava/lang/String;

    .line 92
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 93
    .local v3, params:Lorg/apache/http/params/HttpParams;
    sget-object v5, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 94
    const-string v5, "UTF-8"

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 95
    sget-object v5, Lcom/layar/util/MyConfig;->USER_AGENT:Ljava/lang/String;

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 97
    invoke-static {v3, v9}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 98
    invoke-static {v3, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 99
    invoke-static {v3, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    const/16 v5, 0x2000

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 102
    invoke-static {v3, v9}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 108
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v5, 0xc

    invoke-direct {v0, v5}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 109
    .local v0, connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;
    invoke-static {v3, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 110
    const/16 v5, 0x14

    invoke-static {v3, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 112
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 113
    .local v4, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    .line 114
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    const/16 v8, 0x50

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 113
    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 115
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    .line 116
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 115
    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 118
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 120
    .local v1, manager:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 121
    sget-object v5, Lcom/layar/util/HttpManager;->sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.protocol.allow-circular-redirects"

    .line 122
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 121
    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 123
    sget-object v5, Lcom/layar/util/HttpManager;->sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v6, Lcom/layar/util/HttpManager$1;

    invoke-direct {v6}, Lcom/layar/util/HttpManager$1;-><init>()V

    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 139
    invoke-static {}, Lcom/layar/util/HttpManager;->getOperator()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, operator:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 141
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-Layar-Operator"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    .line 145
    :goto_0
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-Layar-Brand"

    .line 146
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 145
    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sBrand:Lorg/apache/http/Header;

    .line 147
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-Layar-Model"

    .line 148
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 147
    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sModel:Lorg/apache/http/Header;

    .line 149
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-Layar-OS"

    const-string v7, "Android"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sOs:Lorg/apache/http/Header;

    .line 150
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-Layar-OS-Version"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sOsVersion:Lorg/apache/http/Header;

    .line 151
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "X-Layar-Version"

    const-string v7, "5.0.3 (15224)"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sVersion:Lorg/apache/http/Header;

    .line 152
    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/layar/util/HttpManager;->sEncoding:Lorg/apache/http/Header;

    .line 69
    return-void

    .line 143
    :cond_0
    const/4 v5, 0x0

    sput-object v5, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method public static execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "host"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    sget-object v2, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    if-eqz v2, :cond_0

    .line 192
    sget-object v2, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 193
    :cond_0
    sget-object v2, Lcom/layar/util/HttpManager;->sBrand:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 194
    sget-object v2, Lcom/layar/util/HttpManager;->sModel:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 195
    sget-object v2, Lcom/layar/util/HttpManager;->sOs:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 196
    sget-object v2, Lcom/layar/util/HttpManager;->sOsVersion:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 197
    sget-object v2, Lcom/layar/util/HttpManager;->sVersion:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 199
    sget-object v2, Lcom/layar/util/HttpManager;->sEncoding:Lorg/apache/http/Header;

    invoke-interface {p1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/util/HttpManager;->startProfiling(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v0

    .line 202
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile;
    sget-object v2, Lcom/layar/util/HttpManager;->sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 203
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/layar/util/HttpManager;->stopProfiling(Lcom/layar/util/Profiler$TimeProfile;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/util/HttpManager;->registerCall(Ljava/lang/String;)V

    .line 207
    return-object v1
.end method

.method public static execute(Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "get"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/client/methods/HttpGet;Z)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lorg/apache/http/client/methods/HttpGet;Z)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "get"
    .parameter "useGzip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    sget-object v2, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 218
    :cond_0
    sget-object v2, Lcom/layar/util/HttpManager;->sBrand:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 219
    sget-object v2, Lcom/layar/util/HttpManager;->sModel:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 220
    sget-object v2, Lcom/layar/util/HttpManager;->sOs:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 221
    sget-object v2, Lcom/layar/util/HttpManager;->sOsVersion:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 222
    sget-object v2, Lcom/layar/util/HttpManager;->sVersion:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 223
    if-eqz p1, :cond_1

    .line 224
    sget-object v2, Lcom/layar/util/HttpManager;->sEncoding:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Lorg/apache/http/Header;)V

    .line 226
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/util/HttpManager;->startProfiling(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v0

    .line 227
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile;
    sget-object v2, Lcom/layar/util/HttpManager;->sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 228
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/layar/util/HttpManager;->stopProfiling(Lcom/layar/util/Profiler$TimeProfile;)V

    .line 230
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/util/HttpManager;->registerCall(Ljava/lang/String;)V

    .line 232
    return-object v1
.end method

.method public static execute(Lorg/apache/http/client/methods/HttpHead;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "head"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    sget-object v2, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    if-eqz v2, :cond_0

    .line 171
    sget-object v2, Lcom/layar/util/HttpManager;->sOperator:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 172
    :cond_0
    sget-object v2, Lcom/layar/util/HttpManager;->sBrand:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 173
    sget-object v2, Lcom/layar/util/HttpManager;->sModel:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 174
    sget-object v2, Lcom/layar/util/HttpManager;->sOs:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 175
    sget-object v2, Lcom/layar/util/HttpManager;->sOsVersion:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 176
    sget-object v2, Lcom/layar/util/HttpManager;->sVersion:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 178
    sget-object v2, Lcom/layar/util/HttpManager;->sEncoding:Lorg/apache/http/Header;

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpHead;->addHeader(Lorg/apache/http/Header;)V

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpHead;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/util/HttpManager;->startProfiling(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v0

    .line 181
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile;
    sget-object v2, Lcom/layar/util/HttpManager;->sClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 182
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-static {v0}, Lcom/layar/util/HttpManager;->stopProfiling(Lcom/layar/util/Profiler$TimeProfile;)V

    .line 184
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpHead;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/layar/util/HttpManager;->registerCall(Ljava/lang/String;)V

    .line 186
    return-object v1
.end method

.method public static executeRequest(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/layar/util/HttpManager$ResponseHandler;)V
    .locals 4
    .parameter "host"
    .parameter "request"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 282
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static {p0, p1}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 283
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/layar/util/HttpManager$ResponseHandler;->handleResponse(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 294
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 285
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 286
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    :try_start_1
    invoke-interface {p2, v0}, Lcom/layar/util/HttpManager$ResponseHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 287
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 288
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-interface {p2, v0}, Lcom/layar/util/HttpManager$ResponseHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 290
    if-eqz v1, :cond_0

    .line 291
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    goto :goto_0

    .line 289
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 290
    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 293
    :cond_1
    throw v3
.end method

.method private static getOperator()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-static {}, Lcom/layar/App;->getInstance()Lcom/layar/App;

    move-result-object v1

    .line 237
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/layar/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 239
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move-object v1, v3

    .line 247
    :goto_0
    return-object v1

    .line 243
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 247
    goto :goto_0
.end method

.method private static registerCall(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 362
    return-void
.end method

.method public static responseAsString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 347
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 349
    .local v1, bytes:[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, bytesRead:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 353
    .local v3, bytesReceived:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 355
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 350
    .end local v3           #bytesReceived:[B
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 11
    .parameter "id"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 306
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 307
    .local v3, httpStatus:I
    const/16 v9, 0xc8

    if-eq v3, v9, :cond_0

    const/16 v9, 0x12e

    if-ne v3, v9, :cond_3

    .line 308
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "R: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/layar/util/HttpManager;->startProfiling(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;

    move-result-object v7

    .line 310
    .local v7, profile:Lcom/layar/util/Profiler$TimeProfile;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 314
    .local v4, in:Ljava/io/InputStream;
    const-string v9, "Content-Encoding"

    invoke-interface {p1, v9}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 315
    .local v1, contentEncoding:Lorg/apache/http/Header;
    if-eqz v1, :cond_1

    .line 316
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 317
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    move-object v4, v5

    .line 321
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v10, 0x2000

    invoke-direct {v0, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 324
    .local v0, bin:Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, line:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 332
    invoke-static {v7}, Lcom/layar/util/HttpManager;->stopProfiling(Lcom/layar/util/Profiler$TimeProfile;)V

    .line 334
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 336
    .end local v0           #bin:Ljava/io/BufferedReader;
    .end local v1           #contentEncoding:Lorg/apache/http/Header;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #profile:Lcom/layar/util/Profiler$TimeProfile;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v9

    .line 327
    .restart local v0       #bin:Ljava/io/BufferedReader;
    .restart local v1       #contentEncoding:Lorg/apache/http/Header;
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #line:Ljava/lang/String;
    .restart local v7       #profile:Lcom/layar/util/Profiler$TimeProfile;
    .restart local v8       #sb:Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    .end local v0           #bin:Ljava/io/BufferedReader;
    .end local v1           #contentEncoding:Lorg/apache/http/Header;
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #line:Ljava/lang/String;
    .end local v7           #profile:Lcom/layar/util/Profiler$TimeProfile;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v9, 0x191

    if-ne v3, v9, :cond_4

    .line 336
    const/16 v9, 0x1e

    invoke-static {v9}, Lcom/layar/data/Response;->generateResponse(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 339
    :cond_4
    new-instance v9, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    throw v9
.end method

.method public static responseAsString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/HttpResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static startProfiling(Ljava/lang/String;)Lcom/layar/util/Profiler$TimeProfile;
    .locals 1
    .parameter "description"

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 370
    .local v0, profile:Lcom/layar/util/Profiler$TimeProfile;
    return-object v0
.end method

.method private static stopProfiling(Lcom/layar/util/Profiler$TimeProfile;)V
    .locals 0
    .parameter "profile"

    .prologue
    .line 374
    if-eqz p0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/layar/util/Profiler$TimeProfile;->stop()V

    .line 376
    :cond_0
    return-void
.end method
