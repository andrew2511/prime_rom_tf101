.class public Lcom/google/android/gsf/login/MsisdnTokenFetcher;
.super Ljava/lang/Object;
.source "MsisdnTokenFetcher.java"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lorg/apache/http/client/HttpClient;)V
    .locals 0
    .parameter "resolver"
    .parameter "client"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/gsf/login/MsisdnTokenFetcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 52
    iput-object p2, p0, Lcom/google/android/gsf/login/MsisdnTokenFetcher;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 53
    return-void
.end method

.method private createProxy()Lorg/apache/http/HttpHost;
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, host:Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    .line 60
    .local v1, port:I
    if-eqz v0, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getToken(Ljava/lang/String;)[B
    .locals 13
    .parameter "purpose"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v9, p0, Lcom/google/android/gsf/login/MsisdnTokenFetcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "use_msisdn_token"

    invoke-static {v9, v10}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, useMsisdnTokenStr:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    move v7, v9

    .line 68
    .local v7, useMsisdnToken:Z
    :goto_0
    if-nez v7, :cond_1

    .line 69
    const/4 v9, 0x0

    .line 100
    :goto_1
    return-object v9

    .line 66
    .end local v7           #useMsisdnToken:Z
    :cond_0
    const/4 v9, 0x0

    move v7, v9

    goto :goto_0

    .line 72
    .restart local v7       #useMsisdnToken:Z
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://android.clients.google.com/msisdn?purpose="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, uri:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 75
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.route.default-proxy"

    invoke-direct {p0}, Lcom/google/android/gsf/login/MsisdnTokenFetcher;->createProxy()Lorg/apache/http/HttpHost;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 77
    iget-object v9, p0, Lcom/google/android/gsf/login/MsisdnTokenFetcher;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v9, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 79
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 80
    .local v4, status:Lorg/apache/http/StatusLine;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 84
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_3

    .line 85
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 86
    :cond_2
    new-instance v9, Lorg/apache/http/HttpException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Server rejected getToken request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 90
    :cond_3
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    const-wide/16 v11, 0x64

    cmp-long v9, v9, v11

    if-lez v9, :cond_4

    .line 91
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Token too long"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 94
    :cond_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v5, v9, [B

    .line 95
    .local v5, token:[B
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 96
    .local v0, bytesRead:I
    int-to-long v9, v0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 97
    new-instance v9, Ljava/io/IOException;

    const-string v10, "Bad token"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    move-object v9, v5

    .line 100
    goto/16 :goto_1
.end method
