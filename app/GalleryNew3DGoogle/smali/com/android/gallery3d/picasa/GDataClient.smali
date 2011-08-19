.class public final Lcom/android/gallery3d/picasa/GDataClient;
.super Ljava/lang/Object;
.source "GDataClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/picasa/GDataClient$Operation;
    }
.end annotation


# static fields
.field public static final HTTP_CONNECTION_MANAGER:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field public static final HTTP_PARAMS:Lorg/apache/http/params/HttpParams;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private final mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v3, 0x4e20

    .line 67
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 68
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 69
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 70
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 72
    const-string v2, "GData/1.0; gzip"

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 73
    sput-object v0, Lcom/android/gallery3d/picasa/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    .line 76
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 77
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 78
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 81
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v2, Lcom/android/gallery3d/picasa/GDataClient;->HTTP_CONNECTION_MANAGER:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 82
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    sget-object v1, Lcom/android/gallery3d/picasa/GDataClient;->HTTP_CONNECTION_MANAGER:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    sget-object v2, Lcom/android/gallery3d/picasa/GDataClient;->HTTP_PARAMS:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/android/gallery3d/picasa/GDataClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 91
    return-void
.end method

.method private callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V
    .locals 13
    .parameter "request"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const-string v10, "GData-Version"

    const-string v11, "2"

    invoke-interface {p1, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip"

    invoke-interface {p1, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/gallery3d/picasa/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 151
    .local v0, authToken:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 152
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GoogleLogin auth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v10, v11}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v3, p2, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 157
    .local v3, etag:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 158
    const-string v10, "If-None-Match"

    invoke-interface {p1, v10, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1
    const/4 v6, 0x0

    .line 164
    .local v6, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v10, p0, Lcom/android/gallery3d/picasa/GDataClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v10, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 171
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 172
    .local v7, status:I
    const/4 v8, 0x0

    .line 173
    .local v8, stream:Ljava/io/InputStream;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 174
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 177
    if-eqz v8, :cond_2

    .line 178
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    .line 179
    .local v5, header:Lorg/apache/http/Header;
    if-eqz v5, :cond_2

    .line 180
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 181
    new-instance v9, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v8           #stream:Ljava/io/InputStream;
    .local v9, stream:Ljava/io/InputStream;
    move-object v8, v9

    .line 188
    .end local v5           #header:Lorg/apache/http/Header;
    .end local v9           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_2
    const-string v10, "ETag"

    invoke-interface {v6, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 189
    .local v4, etagHeader:Lorg/apache/http/Header;
    iput v7, p2, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outStatus:I

    .line 190
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    :goto_0
    iput-object v10, p2, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 191
    iput-object v8, p2, Lcom/android/gallery3d/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    .line 192
    return-void

    .line 165
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #etagHeader:Lorg/apache/http/Header;
    .end local v7           #status:I
    .end local v8           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 166
    .local v1, e:Ljava/io/IOException;
    const-string v10, "GDataClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Request failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/gallery3d/picasa/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    throw v1

    .line 190
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v4       #etagHeader:Lorg/apache/http/Header;
    .restart local v7       #status:I
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"

    .prologue
    .line 85
    const-string v0, "http:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V
    .locals 4
    .parameter "feedUrl"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p1}, Lcom/android/gallery3d/picasa/GDataClient;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v0, p2, Lcom/android/gallery3d/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 137
    .local v0, etag:Ljava/lang/String;
    const-string v2, "X-HTTP-Method-Override"

    const-string v3, "DELETE"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "If-Match"

    if-eqz v0, :cond_0

    move-object v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v1, p2}, Lcom/android/gallery3d/picasa/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V

    .line 140
    return-void

    .line 138
    :cond_0
    const-string v3, "*"

    goto :goto_0
.end method

.method public get(Ljava/lang/String;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V
    .locals 2
    .parameter "feedUrl"
    .parameter "operation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p1}, Lcom/android/gallery3d/picasa/GDataClient;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/android/gallery3d/picasa/GDataClient;->callMethod(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/android/gallery3d/picasa/GDataClient$Operation;)V

    .line 103
    return-void
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/gallery3d/picasa/GDataClient;->mAuthToken:Ljava/lang/String;

    .line 99
    return-void
.end method
