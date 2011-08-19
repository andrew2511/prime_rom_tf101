.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# static fields
.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MAX_REQUEST_BUFFER_LENGTH:I = 0x8000

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static PERMITTED_USER_METHODS:[Ljava/lang/String; = null

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"

.field private static defaultRequestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;


# instance fields
.field private cacheRequest:Ljava/net/CacheRequest;

.field protected cacheResponse:Ljava/net/CacheResponse;

.field protected connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

.field private final defaultPort:I

.field private hasTriedCache:Z

.field private httpVersion:I

.field protected intermediateResponse:Z

.field private proxy:Ljava/net/Proxy;

.field private redirectionCount:I

.field private requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

.field private final requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

.field private requestOut:Ljava/io/OutputStream;

.field protected responseBodyIn:Ljava/io/InputStream;

.field private responseCache:Ljava/net/ResponseCache;

.field private responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

.field sendChunked:Z

.field private sentRequestHeaders:Z

.field private socketIn:Ljava/io/InputStream;

.field private socketOut:Ljava/io/OutputStream;

.field private transparentGzip:Z

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->PERMITTED_USER_METHODS:[Ljava/lang/String;

    .line 163
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultRequestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;I)V
    .registers 5
    .parameter "url"
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    .line 153
    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->transparentGzip:Z

    .line 176
    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->intermediateResponse:Z

    .line 188
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    .line 189
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultRequestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    .line 191
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$1;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/ResponseCache;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    .line 196
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;ILjava/net/Proxy;)V
    .registers 4
    .parameter "url"
    .parameter "port"
    .parameter "proxy"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;I)V

    .line 210
    iput-object p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 211
    return-void
.end method

.method private getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v10, -0x1

    .line 1191
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1192
    .local v3, idx:I
    if-ne v3, v10, :cond_c

    move-object v9, v12

    .line 1214
    :goto_b
    return-object v9

    .line 1195
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1196
    .local v7, scheme:Ljava/lang/String;
    const-string v9, "realm=\""

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v6, v9, 0x7

    .line 1197
    .local v6, realm:I
    const/4 v5, 0x0

    .line 1198
    .local v5, prompt:Ljava/lang/String;
    if-eq v6, v10, :cond_28

    .line 1199
    const/16 v9, 0x22

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1200
    .local v2, end:I
    if-eq v2, v10, :cond_28

    .line 1201
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1205
    .end local v2           #end:I
    :cond_28
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectToInetAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v10

    iget-object v11, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11, v5, v7}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v4

    .line 1207
    .local v4, pa:Ljava/net/PasswordAuthentication;
    if-nez v4, :cond_3e

    move-object v9, v12

    .line 1208
    goto :goto_b

    .line 1211
    :cond_3e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1212
    .local v8, usernameAndPassword:Ljava/lang/String;
    sget-object v9, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1213
    .local v0, bytes:[B
    sget-object v9, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v9}, Lorg/apache/harmony/luni/util/Base64;->encode([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, encoded:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_b
.end method

.method private getConnectToHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1000
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getConnectToInetAddress()Ljava/net/InetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_12
.end method

.method private getConnectToPort()I
    .registers 3

    .prologue
    .line 979
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    move v0, v1

    .line 982
    .local v0, hostPort:I
    :goto_13
    if-gez v0, :cond_20

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    :goto_17
    return v1

    .line 979
    .end local v0           #hostPort:I
    :cond_18
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v1

    move v0, v1

    goto :goto_13

    .restart local v0       #hostPort:I
    :cond_20
    move v1, v0

    .line 982
    goto :goto_17
.end method

.method private getDefaultUserAgent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 909
    const-string v1, "http.agent"

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, agent:Ljava/lang/String;
    if-eqz v0, :cond_a

    move-object v1, v0

    :goto_9
    return-object v1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-direct {p0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method private getFromCache()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 309
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasTriedCache:Z

    if-eqz v3, :cond_10

    :cond_e
    move v3, v7

    .line 331
    :goto_f
    return v3

    .line 313
    :cond_10
    iput-boolean v8, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasTriedCache:Z

    .line 314
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v1

    .line 315
    .local v1, candidate:Ljava/net/CacheResponse;
    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->acceptCacheResponse(Ljava/net/CacheResponse;)Z

    move-result v3

    if-nez v3, :cond_2a

    move v3, v7

    .line 316
    goto :goto_f

    .line 318
    :cond_2a
    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 319
    .local v2, headersMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v2, :cond_32

    move v3, v7

    .line 320
    goto :goto_f

    .line 322
    :cond_32
    invoke-virtual {v1}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    .line 323
    .local v0, cacheBodyIn:Ljava/io/InputStream;
    if-nez v0, :cond_3a

    move v3, v7

    .line 324
    goto :goto_f

    .line 327
    :cond_3a
    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    .line 328
    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->fromMultimap(Ljava/util/Map;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    .line 329
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->parseStatusLine()V

    .line 330
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    move v3, v8

    .line 331
    goto :goto_f
.end method

.method private getFromNetwork()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1071
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequestHeaders:Z

    if-nez v1, :cond_16

    .line 1072
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    instance-of v1, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    check-cast v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->contentLength()I

    move-result v1

    move v0, v1

    .line 1075
    .local v0, contentLength:I
    :goto_13
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->writeRequestHeaders(I)V

    .line 1078
    .end local v0           #contentLength:I
    :cond_16
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_2e

    .line 1079
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;->close()V

    .line 1080
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    instance-of v1, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    if-eqz v1, :cond_2e

    .line 1081
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    check-cast v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    .line 1085
    :cond_2e
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1086
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    .line 1088
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readResponseHeaders()V

    .line 1090
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasResponseBody()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 1091
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->maybeCache()V

    .line 1094
    :cond_43
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->initContentStream()V

    .line 1095
    return-void

    .line 1072
    :cond_47
    const/4 v1, -0x1

    move v0, v1

    goto :goto_13
.end method

.method private getHttpConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 5
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_1f

    .line 287
    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 288
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;-><init>(Ljava/net/URI;)V

    .line 292
    .local v0, address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    :goto_14
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->INSTANCE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->get(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v1

    return-object v1

    .line 290
    .end local v0           #address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    :cond_1f
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requiresTunnel()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;-><init>(Ljava/net/URI;Ljava/net/Proxy;Z)V

    .restart local v0       #address:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection$Address;
    goto :goto_14
.end method

.method private getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .registers 6
    .parameter "url"

    .prologue
    .line 921
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    .line 922
    .local v0, port:I
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, result:Ljava/lang/String;
    if-lez v0, :cond_25

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    if-eq v0, v2, :cond_25

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 926
    :cond_25
    return-object v1
.end method

.method private getStatusLine()Ljava/lang/String;
    .registers 4

    .prologue
    .line 904
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-nez v1, :cond_2f

    const-string v1, "HTTP/1.0"

    move-object v0, v1

    .line 905
    .local v0, protocol:Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 904
    .end local v0           #protocol:Ljava/lang/String;
    :cond_2f
    const-string v1, "HTTP/1.1"

    move-object v0, v1

    goto :goto_7
.end method

.method private getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "property"

    .prologue
    .line 1006
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getTransferStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 557
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasResponseBody()Z

    move-result v2

    if-nez v2, :cond_11

    .line 558
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;I)V

    .line 579
    :goto_10
    return-object v2

    .line 561
    :cond_11
    const-string v2, "chunked"

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 562
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v2, v3, v4, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V

    goto :goto_10

    .line 565
    :cond_2b
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, contentLength:Ljava/lang/String;
    if-eqz v0, :cond_44

    .line 568
    :try_start_35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 569
    .local v1, length:I
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v2, v3, v4, p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;I)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_42} :catch_43

    goto :goto_10

    .line 570
    .end local v1           #length:I
    :catch_43
    move-exception v2

    .line 579
    :cond_44
    new-instance v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v2, v3, v4, p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;)V

    goto :goto_10
.end method

.method private hasConnectionCloseHeader()Z
    .registers 4

    .prologue
    .line 914
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-eqz v0, :cond_14

    const-string v0, "close"

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-eqz v0, :cond_2a

    const-string v0, "close"

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method private hasResponseBody()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 710
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "HEAD"

    if-eq v1, v2, :cond_27

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v2, "CONNECT"

    if-eq v1, v2, :cond_27

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_19

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_27

    :cond_19
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0xcc

    if-eq v1, v2, :cond_27

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v2, 0x130

    if-eq v1, v2, :cond_27

    move v1, v4

    .line 731
    :goto_26
    return v1

    .line 723
    :cond_27
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, contentLength:Ljava/lang/String;
    if-eqz v0, :cond_39

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_39

    move v1, v4

    .line 725
    goto :goto_26

    .line 727
    :cond_39
    const-string v1, "chunked"

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v4

    .line 728
    goto :goto_26

    .line 731
    :cond_4b
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private initContentStream()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getTransferStream()Ljava/io/InputStream;

    move-result-object v0

    .line 544
    .local v0, transferStream:Ljava/io/InputStream;
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->transparentGzip:Z

    if-eqz v1, :cond_27

    const-string v1, "gzip"

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v3, "Content-Encoding"

    invoke-virtual {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 549
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v2, "Content-Encoding"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->removeAll(Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    .line 554
    :goto_26
    return-void

    .line 552
    :cond_27
    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_26
.end method

.method private maybeCache()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->useCaches:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    if-nez v0, :cond_9

    .line 356
    :cond_8
    :goto_8
    return-void

    .line 349
    :cond_9
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_27

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_27

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_27

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_27

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x19a

    if-ne v0, v1, :cond_8

    .line 355
    :cond_27
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectionForCaching()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_8
.end method

.method private parseStatusLine()V
    .registers 6

    .prologue
    .line 741
    const/4 v3, 0x1

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    .line 742
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    .line 743
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseMessage:Ljava/lang/String;

    .line 746
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, response:Ljava/lang/String;
    if-eqz v2, :cond_19

    const-string v3, "HTTP/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 766
    :cond_19
    :goto_19
    return-void

    .line 750
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 751
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 752
    .local v1, mark:I
    if-eqz v1, :cond_19

    .line 755
    const/4 v3, 0x2

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-eq v3, v4, :cond_36

    .line 756
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    .line 758
    :cond_36
    add-int/lit8 v0, v1, 0x3

    .line 759
    .local v0, last:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v0, v3, :cond_42

    .line 760
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 762
    :cond_42
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    .line 763
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v3, v4, :cond_19

    .line 764
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseMessage:Ljava/lang/String;

    goto :goto_19
.end method

.method private prepareRequestHeaders()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v11, "CONNECT"

    if-ne v10, v11, :cond_52

    .line 828
    new-instance v7, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-direct {v7}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;-><init>()V

    .line 829
    .local v7, proxyHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getStatusLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 832
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Host"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, host:Ljava/lang/String;
    if-nez v3, :cond_22

    .line 834
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-direct {p0, v10}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    .line 836
    :cond_22
    const-string v10, "Host"

    invoke-virtual {v7, v10, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "User-Agent"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 839
    .local v9, userAgent:Ljava/lang/String;
    if-nez v9, :cond_35

    .line 840
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v9

    .line 842
    :cond_35
    const-string v10, "User-Agent"

    invoke-virtual {v7, v10, v9}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Proxy-Authorization"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 846
    .local v6, proxyAuthorization:Ljava/lang/String;
    if-eqz v6, :cond_49

    .line 847
    const-string v10, "Proxy-Authorization"

    invoke-virtual {v7, v10, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_49
    const-string v10, "Proxy-Connection"

    const-string v11, "Keep-Alive"

    invoke-virtual {v7, v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v7

    .line 900
    .end local v3           #host:Ljava/lang/String;
    .end local v6           #proxyAuthorization:Ljava/lang/String;
    .end local v7           #proxyHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;
    .end local v9           #userAgent:Ljava/lang/String;
    :goto_51
    return-object v10

    .line 856
    :cond_52
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getStatusLine()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 858
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "User-Agent"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_70

    .line 859
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "User-Agent"

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_70
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Host"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_87

    .line 863
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Host"

    iget-object v12, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-direct {p0, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_87
    iget v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-lez v10, :cond_94

    .line 867
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Connection"

    const-string v12, "Keep-Alive"

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_94
    iget v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_111

    .line 871
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Content-Length"

    iget v12, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    :cond_a6
    :goto_a6
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    if-eqz v10, :cond_b3

    .line 880
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_b3
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Accept-Encoding"

    invoke-virtual {v10, v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_c9

    .line 884
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->transparentGzip:Z

    .line 885
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_c9
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    .line 889
    .local v1, cookieHandler:Ljava/net/CookieHandler;
    if-eqz v1, :cond_13a

    .line 890
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    iget-object v11, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v11}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 892
    .local v0, allCookieHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_e3
    :goto_e3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 893
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 894
    .local v5, key:Ljava/lang/String;
    const-string v10, "Cookie"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_105

    const-string v10, "Cookie2"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e3

    .line 895
    :cond_105
    iget-object v11, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v11, v5, v10}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_e3

    .line 872
    .end local v0           #allCookieHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1           #cookieHandler:Ljava/net/CookieHandler;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    :cond_111
    iget-boolean v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    if-eqz v10, :cond_11f

    .line 873
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Transfer-Encoding"

    const-string v12, "chunked"

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a6

    .line 874
    :cond_11f
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    instance-of v10, v10, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    if-eqz v10, :cond_a6

    .line 875
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    check-cast v10, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    invoke-virtual {v10}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;->contentLength()I

    move-result v8

    .line 876
    .local v8, size:I
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v11, "Content-Length"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->addIfAbsent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a6

    .line 900
    .end local v8           #size:I
    .restart local v1       #cookieHandler:Ljava/net/CookieHandler;
    :cond_13a
    iget-object v10, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    goto/16 :goto_51
.end method

.method private processAuthHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
    .registers 7
    .parameter "responseHeader"
    .parameter "retryHeader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1175
    .local v0, challenge:Ljava/lang/String;
    if-nez v0, :cond_10

    .line 1176
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Received authentication challenge is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1178
    :cond_10
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getAuthorizationCredentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, credentials:Ljava/lang/String;
    if-nez v1, :cond_19

    .line 1180
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    .line 1184
    :goto_18
    return-object v2

    .line 1183
    :cond_19
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v2, p2, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    sget-object v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto :goto_18
.end method

.method private processResponseHeaders()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    sparse-switch v3, :sswitch_data_e4

    .line 1165
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    :goto_7
    return-object v3

    .line 1111
    :sswitch_8
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1112
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1115
    :cond_16
    const-string v3, "Proxy-Authenticate"

    const-string v4, "Proxy-Authorization"

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->processAuthHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    move-result-object v3

    goto :goto_7

    .line 1118
    :sswitch_1f
    const-string v3, "WWW-Authenticate"

    const-string v4, "Authorization"

    invoke-direct {p0, v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->processAuthHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    move-result-object v3

    goto :goto_7

    .line 1125
    :sswitch_28
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v3

    if-nez v3, :cond_31

    .line 1126
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto :goto_7

    .line 1128
    :cond_31
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    if-eqz v3, :cond_38

    .line 1130
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto :goto_7

    .line 1132
    :cond_38
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->redirectionCount:I

    const/4 v4, 0x5

    if-le v3, v4, :cond_49

    .line 1133
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Too many redirects"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1135
    :cond_49
    const-string v3, "Location"

    invoke-virtual {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, location:Ljava/lang/String;
    if-nez v0, :cond_54

    .line 1137
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto :goto_7

    .line 1139
    :cond_54
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v4, 0x131

    if-ne v3, v4, :cond_9b

    .line 1140
    const/4 v2, 0x0

    .line 1141
    .local v2, start:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1142
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 1144
    :cond_86
    const-string v3, "//"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1145
    add-int/lit8 v2, v2, 0x2

    .line 1147
    :cond_90
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setProxy(Ljava/lang/String;)V

    .line 1148
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_7

    .line 1150
    .end local v2           #start:I
    :cond_9b
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 1151
    .local v1, previousUrl:Ljava/net/URL;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 1152
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 1153
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_7

    .line 1155
    :cond_b8
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    invoke-virtual {v1}, Ljava/net/URL;->getEffectivePort()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getEffectivePort()I

    move-result v4

    if-ne v3, v4, :cond_d8

    .line 1157
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_7

    .line 1160
    :cond_d8
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v4, "Host"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->removeAll(Ljava/lang/String;)V

    .line 1161
    sget-object v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_7

    .line 1109
    nop

    :sswitch_data_e4
    .sparse-switch
        0x12c -> :sswitch_28
        0x12d -> :sswitch_28
        0x12e -> :sswitch_28
        0x12f -> :sswitch_28
        0x131 -> :sswitch_28
        0x191 -> :sswitch_1f
        0x197 -> :sswitch_8
    .end sparse-switch
.end method

.method static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 671
    .local v2, result:Ljava/lang/StringBuilder;
    :goto_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 672
    .local v0, c:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_13

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2d

    .line 678
    :cond_13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 679
    .local v1, length:I
    if-lez v1, :cond_28

    sub-int v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_28

    .line 680
    sub-int v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 682
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 676
    .end local v1           #length:I
    :cond_2d
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method private readResponseHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    :cond_0
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    .line 699
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readHeaders()V

    .line 701
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->parseStatusLine()V

    .line 702
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 703
    return-void
.end method

.method private setProxy(Ljava/lang/String;)V
    .registers 8
    .parameter "proxy"

    .prologue
    .line 1219
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1222
    .local v0, colon:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_27

    .line 1223
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1224
    .local v1, host:Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1229
    .local v2, port:I
    :goto_18
    new-instance v3, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v3, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    .line 1230
    return-void

    .line 1226
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    :cond_27
    move-object v1, p1

    .line 1227
    .restart local v1       #host:Ljava/lang/String;
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->defaultPort:I

    .restart local v2       #port:I
    goto :goto_18
.end method

.method private writeRequestHeaders(I)V
    .registers 6
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 803
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->prepareRequestHeaders()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 805
    .local v0, headerBytes:[B
    const/4 v1, -0x1

    if-eq p1, v1, :cond_23

    array-length v1, v0

    add-int/2addr v1, p1

    const v2, 0x8000

    if-gt v1, v2, :cond_23

    .line 807
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    array-length v3, v0

    add-int/2addr v3, p1

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    .line 810
    :cond_23
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequestHeaders:Z

    .line 812
    return-void
.end method


# virtual methods
.method protected acceptCacheResponse(Ljava/net/CacheResponse;)Z
    .registers 3
    .parameter "cacheResponse"

    .prologue
    .line 339
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "value"

    .prologue
    .line 965
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_c

    .line 966
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_c
    if-nez p1, :cond_14

    .line 969
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 971
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public final connect()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_5

    .line 218
    :goto_4
    return-void

    .line 217
    :cond_5
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->makeConnection()V

    goto :goto_4
.end method

.method protected final discardIntermediateResponse()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->intermediateResponse:Z

    .line 411
    .local v0, oldIntermediateResponse:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->intermediateResponse:Z

    .line 413
    :try_start_5
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v1, :cond_1c

    .line 414
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    instance-of v1, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/UnknownLengthHttpInputStream;

    if-nez v1, :cond_14

    .line 416
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V

    .line 418
    :cond_14
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 419
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    .line 421
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequestHeaders:Z

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    .line 423
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    .line 424
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseMessage:Ljava/lang/String;

    .line 425
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheRequest:Ljava/net/CacheRequest;

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    .line 428
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasTriedCache:Z
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_37

    .line 430
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->intermediateResponse:Z

    .line 432
    return-void

    .line 430
    :catchall_37
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->intermediateResponse:Z

    throw v1
.end method

.method public final disconnect()V
    .registers 2

    .prologue
    .line 362
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->releaseSocket(Z)V

    .line 363
    return-void
.end method

.method protected getConnectionForCaching()Ljava/net/HttpURLConnection;
    .registers 1

    .prologue
    .line 1023
    return-object p0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 445
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v1, "HEAD"

    if-eq v0, v1, :cond_13

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_13

    .line 446
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    .line 448
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 458
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->retrieveResponse()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 461
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 459
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 481
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->retrieveResponse()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_19

    .line 484
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-nez v0, :cond_9

    .line 485
    const/4 v0, 0x0

    .line 487
    :goto_8
    return-object v0

    :cond_9
    if-nez p1, :cond_12

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 482
    :catch_19
    move-exception v0

    goto :goto_3
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 493
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->retrieveResponse()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 496
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->getKey(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 494
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->retrieveResponse()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    .line 505
    :goto_3
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d

    .line 503
    :catch_10
    move-exception v0

    goto :goto_3
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v0, :cond_c

    .line 520
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_c
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->retrieveResponse()V

    .line 531
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_21

    .line 532
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_21
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    if-nez v0, :cond_40

    .line 536
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No response body exists; responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_40
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 584
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->doOutput:Z

    if-nez v3, :cond_d

    .line 585
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Does not support output"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 589
    :cond_d
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sentRequestHeaders:Z

    if-eqz v3, :cond_19

    .line 591
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "OutputStream unavailable because request headers have already been sent!"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 595
    :cond_19
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    if-eqz v3, :cond_20

    .line 596
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    .line 647
    :goto_1f
    return-object v3

    .line 600
    :cond_20
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v4, "GET"

    if-ne v3, v4, :cond_2a

    .line 601
    const-string v3, "POST"

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 605
    :cond_2a
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v4, "PUT"

    if-eq v3, v4, :cond_51

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string v4, "POST"

    if-eq v3, v4, :cond_51

    .line 606
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support writing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 609
    :cond_51
    const/4 v0, -0x1

    .line 610
    .local v0, contentLength:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v4, "Content-Length"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, contentLengthString:Ljava/lang/String;
    if-eqz v1, :cond_60

    .line 612
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 615
    :cond_60
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v4, "Transfer-Encoding"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, encoding:Ljava/lang/String;
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I

    if-gtz v3, :cond_74

    const-string v3, "chunked"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 617
    :cond_74
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    .line 618
    const/4 v0, -0x1

    .line 619
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I

    if-ne v3, v5, :cond_80

    .line 620
    const/16 v3, 0x400

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I

    .line 624
    :cond_80
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connect()V

    .line 626
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    if-nez v3, :cond_8f

    .line 628
    new-instance v3, Ljava/io/IOException;

    const-string v4, "No socket to write to; was a POST cached?"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 631
    :cond_8f
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->httpVersion:I

    if-nez v3, :cond_96

    .line 632
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    .line 635
    :cond_96
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    if-eq v3, v5, :cond_ae

    .line 636
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->writeRequestHeaders(I)V

    .line 637
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->fixedContentLength:I

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    .line 647
    :goto_aa
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    goto/16 :goto_1f

    .line 638
    :cond_ae
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->sendChunked:Z

    if-eqz v3, :cond_c1

    .line 639
    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->writeRequestHeaders(I)V

    .line 640
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    iget v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->chunkLength:I

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    goto :goto_aa

    .line 641
    :cond_c1
    if-eq v0, v5, :cond_ce

    .line 642
    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->writeRequestHeaders(I)V

    .line 643
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    invoke-direct {v3, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;-><init>(I)V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    goto :goto_aa

    .line 645
    :cond_ce
    new-instance v3, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    invoke-direct {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;-><init>()V

    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    goto :goto_aa
.end method

.method public final getPermission()Ljava/security/Permission;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectToHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getConnectToPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, connectToAddress:Ljava/lang/String;
    new-instance v1, Ljava/net/SocketPermission;

    const-string v2, "connect, resolve"

    invoke-direct {v1, v0, v2}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 510
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_c

    .line 511
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "field"

    .prologue
    .line 658
    if-nez p1, :cond_4

    .line 659
    const/4 v0, 0x0

    .line 661
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->retrieveResponse()V

    .line 737
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    return v0
.end method

.method protected makeConnection()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    .line 231
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-nez v5, :cond_b

    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v5, :cond_c

    .line 279
    :cond_b
    :goto_b
    return-void

    .line 236
    :cond_c
    :try_start_c
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_14} :catch_35

    .line 241
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getFromCache()Z

    move-result v5

    if-nez v5, :cond_b

    .line 246
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v5, :cond_3d

    .line 250
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHttpConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 277
    :cond_26
    :goto_26
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->setSoTimeout(I)V

    .line 278
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    goto :goto_b

    .line 237
    :catch_35
    move-exception v5

    move-object v0, v5

    .line 238
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 254
    .end local v0           #e:Ljava/net/URISyntaxException;
    :cond_3d
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v4

    .line 255
    .local v4, selector:Ljava/net/ProxySelector;
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {v4, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v2

    .line 256
    .local v2, proxyList:Ljava/util/List;,"Ljava/util/List<Ljava/net/Proxy;>;"
    if-eqz v2, :cond_69

    .line 257
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Proxy;

    .line 258
    .local v3, selectedProxy:Ljava/net/Proxy;
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_4d

    .line 263
    :try_start_61
    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHttpConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 264
    iput-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_69} :catch_75

    .line 272
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #selectedProxy:Ljava/net/Proxy;
    :cond_69
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-nez v5, :cond_26

    .line 274
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getHttpConnection(Ljava/net/Proxy;)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    goto :goto_26

    .line 266
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #selectedProxy:Ljava/net/Proxy;
    :catch_75
    move-exception v5

    move-object v0, v5

    .line 268
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    goto :goto_4d
.end method

.method readHeaders()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    :goto_0
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_37

    .line 773
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 774
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_22

    .line 775
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v4, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_22
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    .end local v1           #index:I
    :cond_37
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 782
    .local v0, cookieHandler:Ljava/net/CookieHandler;
    if-eqz v0, :cond_48

    .line 783
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->uri:Ljava/net/URI;

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v4}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 785
    :cond_48
    return-void
.end method

.method protected final releaseSocket(Z)V
    .registers 5
    .parameter "reuseSocket"

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    iget-boolean v0, v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;->closed:Z

    if-nez v0, :cond_c

    .line 371
    const/4 p1, 0x0

    .line 375
    :cond_c
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasConnectionCloseHeader()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 376
    const/4 p1, 0x0

    .line 383
    :cond_13
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->intermediateResponse:Z

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    .line 403
    :goto_19
    return-void

    .line 387
    :cond_1a
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    if-eqz v0, :cond_29

    .line 388
    if-eqz p1, :cond_30

    .line 389
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->INSTANCE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionPool;->recycle(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    .line 393
    :goto_27
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 400
    :cond_29
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    .line 401
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    .line 402
    iput-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    goto :goto_19

    .line 391
    :cond_30
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_27
.end method

.method protected requestString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 686
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 687
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 693
    :goto_c
    return-object v1

    .line 689
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 690
    .local v0, file:Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    .line 691
    :cond_1b
    const-string v0, "/"

    :cond_1d
    move-object v1, v0

    .line 693
    goto :goto_c
.end method

.method protected requiresTunnel()Z
    .registers 2

    .prologue
    .line 1014
    const/4 v0, 0x0

    return v0
.end method

.method protected final retrieveResponse()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    if-eqz v1, :cond_5

    .line 1047
    :cond_4
    return-void

    .line 1036
    :cond_5
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->redirectionCount:I

    .line 1038
    :cond_8
    :goto_8
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->makeConnection()V

    .line 1040
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->cacheResponse:Ljava/net/CacheResponse;

    if-nez v1, :cond_12

    .line 1041
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->getFromNetwork()V

    .line 1044
    :cond_12
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->processResponseHeaders()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    move-result-object v0

    .line 1046
    .local v0, retry:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NONE:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    if-eq v0, v1, :cond_4

    .line 1054
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestBodyOut:Lorg/apache/harmony/luni/internal/net/www/protocol/http/AbstractHttpOutputStream;

    instance-of v1, v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/RetryableOutputStream;

    if-nez v1, :cond_2e

    .line 1055
    new-instance v1, Ljava/net/HttpRetryException;

    const-string v2, "Cannot retry streamed HTTP body"

    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->responseCode:I

    invoke-direct {v1, v2, v3}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1058
    :cond_2e
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    if-ne v0, v1, :cond_3a

    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->hasConnectionCloseHeader()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1059
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    .line 1062
    :cond_3a
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->discardIntermediateResponse()V

    .line 1064
    sget-object v1, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;->NEW_CONNECTION:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl$Retry;

    if-ne v0, v1, :cond_8

    .line 1065
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->releaseSocket(Z)V

    goto :goto_8
.end method

.method public final setIfModifiedSince(J)V
    .registers 7
    .parameter "newValue"

    .prologue
    .line 944
    invoke-super {p0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 946
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "E, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 947
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 948
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, date:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    const-string v3, "If-Modified-Since"

    invoke-virtual {v2, v3, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "newValue"

    .prologue
    .line 954
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_c

    .line 955
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_c
    if-nez p1, :cond_14

    .line 958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 960
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestHeader:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method protected setUpTransportIO(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .registers 3
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    .line 300
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->requestOut:Ljava/io/OutputStream;

    .line 301
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->socketIn:Ljava/io/InputStream;

    .line 302
    return-void
.end method

.method public final usingProxy()Z
    .registers 3

    .prologue
    .line 1010
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnectionImpl;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
