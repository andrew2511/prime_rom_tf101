.class public Lcom/google/android/gsf/login/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field private static mMsisdnToken:[B

.field private static mSingleton:Lcom/google/android/gsf/login/HttpHelper;


# instance fields
.field private final TIMEOUT:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/login/HttpHelper;->mSingleton:Lcom/google/android/gsf/login/HttpHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/16 v4, 0x7530

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v4, p0, Lcom/google/android/gsf/login/HttpHelper;->TIMEOUT:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/HttpHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 76
    new-instance v1, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v2, "Android-SetupWizard/1.0"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 78
    iget-object v1, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 79
    .local v0, params:Lorg/apache/http/params/HttpParams;
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 80
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 81
    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 82
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/login/HttpHelperException;
        }
    .end annotation

    .prologue
    .line 85
    sget-object v0, Lcom/google/android/gsf/login/HttpHelper;->mSingleton:Lcom/google/android/gsf/login/HttpHelper;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/android/gsf/login/HttpHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/HttpHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gsf/login/HttpHelper;->mSingleton:Lcom/google/android/gsf/login/HttpHelper;

    .line 88
    :cond_0
    sget-object v0, Lcom/google/android/gsf/login/HttpHelper;->mSingleton:Lcom/google/android/gsf/login/HttpHelper;

    return-object v0
.end method


# virtual methods
.method getMsisdn()Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    sget-object v2, Lcom/google/android/gsf/login/HttpHelper;->mMsisdnToken:[B

    if-nez v2, :cond_0

    .line 156
    :try_start_0
    new-instance v1, Lcom/google/android/gsf/login/MsisdnTokenFetcher;

    iget-object v2, p0, Lcom/google/android/gsf/login/HttpHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gsf/login/MsisdnTokenFetcher;-><init>(Landroid/content/ContentResolver;Lorg/apache/http/client/HttpClient;)V

    .line 158
    .local v1, fetcher:Lcom/google/android/gsf/login/MsisdnTokenFetcher;
    const-string v2, "register"

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/login/MsisdnTokenFetcher;->getToken(Ljava/lang/String;)[B

    move-result-object v2

    sput-object v2, Lcom/google/android/gsf/login/HttpHelper;->mMsisdnToken:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .end local v1           #fetcher:Lcom/google/android/gsf/login/MsisdnTokenFetcher;
    :cond_0
    :goto_0
    sget-object v2, Lcom/google/android/gsf/login/HttpHelper;->mMsisdnToken:[B

    if-eqz v2, :cond_1

    sget-object v2, Lcom/google/android/gsf/login/HttpHelper;->mMsisdnToken:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 159
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 160
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SetupWizard"

    const-string v3, "Failed to get MSISDN: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 161
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 162
    .local v0, e:Lorg/apache/http/HttpException;
    const-string v2, "SetupWizard"

    const-string v3, "Failed to get MSISDN: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 165
    .end local v0           #e:Lorg/apache/http/HttpException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTos(Ljava/lang/String;)Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;
    .locals 10
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v7, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 172
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 173
    .local v3, request:Lorg/apache/http/client/methods/HttpGet;
    iget-object v7, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v7, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 175
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 177
    .local v6, status:I
    const/16 v7, 0xc8

    if-eq v6, v7, :cond_0

    .line 178
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v1, ostream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 195
    const/4 v7, 0x0

    .end local v1           #ostream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    return-object v7

    .line 182
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v5, sb:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 186
    .local v2, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 187
    .local v0, line:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    :cond_1
    new-instance v7, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestJson(Ljava/lang/String;Lorg/json/JSONStringer;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "jsonRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/login/HttpHelperException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v0, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v0, content:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 98
    iget-object v5, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 99
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 117
    .local v4, result:Ljava/lang/String;
    return-object v4

    .line 118
    .end local v0           #content:Lorg/apache/http/entity/StringEntity;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #result:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 119
    .local v1, e:Ljava/net/UnknownHostException;
    new-instance v5, Lcom/google/android/gsf/login/HttpHelperException;

    invoke-direct {v5, v1}, Lcom/google/android/gsf/login/HttpHelperException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 120
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 121
    .local v1, e:Ljava/net/ConnectException;
    new-instance v5, Lcom/google/android/gsf/login/HttpHelperException;

    invoke-direct {v5, v1}, Lcom/google/android/gsf/login/HttpHelperException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 122
    .end local v1           #e:Ljava/net/ConnectException;
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 123
    .local v1, e:Ljava/net/SocketTimeoutException;
    throw v1

    .line 124
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v5

    move-object v1, v5

    .line 125
    .local v1, e:Ljava/io/IOException;
    throw v1
.end method

.method public requestUrl(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/login/HttpHelperException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    iget-object v3, p0, Lcom/google/android/gsf/login/HttpHelper;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 140
    .local v2, response:Lorg/apache/http/HttpResponse;
    return-object v2

    .line 141
    .end local v1           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 142
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v3, Lcom/google/android/gsf/login/HttpHelperException;

    invoke-direct {v3, v0}, Lcom/google/android/gsf/login/HttpHelperException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 143
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 144
    .local v0, e:Ljava/net/ConnectException;
    new-instance v3, Lcom/google/android/gsf/login/HttpHelperException;

    invoke-direct {v3, v0}, Lcom/google/android/gsf/login/HttpHelperException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 145
    .end local v0           #e:Ljava/net/ConnectException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 146
    .local v0, e:Ljava/net/SocketTimeoutException;
    throw v0

    .line 147
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 148
    .local v0, e:Ljava/io/IOException;
    throw v0
.end method
