.class public Lcom/google/android/apps/books/net/ResponseGetter;
.super Ljava/lang/Object;
.source "ResponseGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;,
        Lcom/google/android/apps/books/net/ResponseGetter$TokenExpiredException;,
        Lcom/google/android/apps/books/net/ResponseGetter$AuthIoException;,
        Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;,
        Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;,
        Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;,
        Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;
    }
.end annotation


# static fields
.field private static final AUTHORIZATION_HEADER_KEY:Ljava/lang/String; = "Authorization"

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final RETRY_SLEEP_MILLIS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "ResponseGetter"

.field private static final sDefaultCodes:[I


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/net/ResponseGetter;->sDefaultCodes:[I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Landroid/net/ConnectivityManager;Landroid/accounts/AccountManager;)V
    .locals 1
    .parameter "httpClient"
    .end parameter
    .parameter "connectivityManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "accountManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "missing httpClient"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 88
    iput-object p2, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 89
    iput-object p3, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mAccountManager:Landroid/accounts/AccountManager;

    .line 90
    return-void
.end method

.method private static getHeaders(Lorg/apache/http/HttpMessage;)Ljava/lang/String;
    .locals 9
    .parameter "request"

    .prologue
    .line 324
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 326
    .local v2, headers:[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 327
    .local v1, header:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, name:Ljava/lang/String;
    const-string v7, "Authorization"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 329
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v1           #header:Lorg/apache/http/Header;
    .end local v5           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private getRetryMillis(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;
    .locals 12
    .parameter "resp"

    .prologue
    const-wide/16 v10, 0x3e8

    .line 369
    const-string v6, "Retry-After"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 370
    .local v1, header:Lorg/apache/http/Header;
    const/4 v3, 0x0

    .line 371
    .local v3, millis:Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 372
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, retryAfterString:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 386
    .end local v4           #retryAfterString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 375
    .restart local v4       #retryAfterString:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 378
    .local v2, ignored:Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 379
    .local v5, time:Landroid/text/format/Time;
    invoke-virtual {v5, v4}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 380
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 381
    .end local v5           #time:Landroid/text/format/Time;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 382
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v6, "ResponseGetter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to parse "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static maybeGetPostBody(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 6
    .parameter "request"

    .prologue
    const-string v5, ""

    .line 339
    instance-of v4, p0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v4, :cond_0

    .line 340
    move-object v0, p0

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v3, v0

    .line 341
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 342
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    :try_start_0
    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 350
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_0
    return-object v4

    .line 345
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v1

    .line 346
    .local v1, e:Ljava/io/IOException;
    const-string v4, ""

    move-object v4, v5

    goto :goto_0

    .line 350
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    const-string v4, ""

    move-object v4, v5

    goto :goto_0
.end method

.method private static toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 2
    .parameter "request"

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->getHeaders(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->maybeGetPostBody(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toVerboseString(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .parameter "request"
    .parameter "response"

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nResponse\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toVerboseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 2
    .parameter "response"

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->getHeaders(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    .locals 10
    .parameter "request"
    .parameter "account"
    .parameter "okCodes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const-string v8, "ResponseGetter"

    .line 118
    if-eqz p3, :cond_0

    array-length v6, p3

    if-nez v6, :cond_1

    .line 119
    :cond_0
    sget-object p3, Lcom/google/android/apps/books/net/ResponseGetter;->sDefaultCodes:[I

    .line 123
    :cond_1
    const/4 v1, 0x0

    .line 125
    .local v1, errCount:I
    :cond_2
    const/4 v3, 0x0

    .line 127
    .local v3, ioException:Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/net/ResponseGetter;->executeOnce(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 164
    :goto_0
    return-object v6

    .line 128
    :catch_0
    move-exception v4

    .line 131
    .local v4, ioe:Ljava/io/IOException;
    add-int/lit8 v1, v1, 0x1

    .line 132
    move-object v3, v4

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->isConnected()Z

    move-result v6

    if-nez v6, :cond_3

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Device offline, skipping "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, msg:Ljava/lang/String;
    const-string v6, "ResponseGetter"

    invoke-static {v8, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    new-instance v3, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    .end local v3           #ioException:Ljava/io/IOException;
    invoke-direct {v3, v5, v4}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    .restart local v3       #ioException:Ljava/io/IOException;
    throw v3

    .line 142
    .end local v5           #msg:Ljava/lang/String;
    :cond_3
    instance-of v6, v4, Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;

    if-nez v6, :cond_4

    instance-of v6, v4, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;

    if-eqz v6, :cond_6

    move-object v0, v4

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;->shouldRetry()Z

    move-result v6

    if-nez v6, :cond_6

    .line 145
    :cond_4
    const-string v6, "ResponseGetter"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 146
    const-string v6, "ResponseGetter"

    const-string v6, "Skipping retry for"

    invoke-static {v8, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_5
    throw v4

    .line 150
    :cond_6
    const-string v6, "ResponseGetter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-wide/16 v6, 0x3e8

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    if-eqz v3, :cond_7

    if-lt v1, v9, :cond_2

    .line 160
    :cond_7
    if-eqz v3, :cond_8

    .line 161
    throw v3

    .line 154
    :catch_1
    move-exception v2

    .line 155
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v6, "ResponseGetter"

    const-string v6, "Interrupted while waiting to retry"

    invoke-static {v8, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 163
    .end local v2           #ie:Ljava/lang/InterruptedException;
    :cond_8
    const-string v6, "Programming error"

    invoke-static {v6}, Lcom/google/android/apps/books/util/Assert;->fail(Ljava/lang/String;)V

    .line 164
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method protected executeOnce(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    .locals 21
    .parameter "request"
    .parameter "account"
    .parameter "okCodes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 191
    const/4 v5, 0x0

    .line 211
    .local v5, authToken:Ljava/lang/String;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v13

    .line 229
    .local v13, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 230
    .local v17, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 234
    .local v15, status:I
    move-object/from16 v4, p3

    .local v4, arr$:[I
    array-length v10, v4

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_3

    aget v12, v4, v9

    .line 235
    .local v12, okCode:I
    if-ne v15, v12, :cond_2

    .line 270
    .end local v12           #okCode:I
    :goto_2
    return-object v13

    .line 193
    .end local v4           #arr$:[I
    .end local v5           #authToken:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v13           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #status:I
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/net/ResponseGetter;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "missing account manager for account "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/net/ResponseGetter;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/net/GoogleContentHandler;->blockingGetAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v5

    .line 199
    .restart local v5       #authToken:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 200
    const-string v18, "Authorization"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 201
    const-string v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GoogleLogin auth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    const-string v18, "ResponseGetter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "null auth token for account "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v18

    move-object/from16 v7, v18

    .line 213
    .local v7, e:Ljava/net/UnknownHostException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 214
    .end local v7           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v18

    move-object/from16 v7, v18

    .line 215
    .local v7, e:Ljava/net/NoRouteToHostException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 216
    .end local v7           #e:Ljava/net/NoRouteToHostException;
    :catch_2
    move-exception v18

    move-object/from16 v7, v18

    .line 217
    .local v7, e:Ljava/net/ConnectException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 218
    .end local v7           #e:Ljava/net/ConnectException;
    :catch_3
    move-exception v18

    move-object/from16 v7, v18

    .line 220
    .local v7, e:Ljava/net/SocketTimeoutException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 221
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v18

    move-object/from16 v7, v18

    .line 222
    .local v7, e:Lorg/apache/http/client/HttpResponseException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 223
    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_5
    move-exception v18

    move-object/from16 v7, v18

    .line 224
    .local v7, e:Lorg/apache/http/client/ClientProtocolException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v18

    .line 225
    .end local v7           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_6
    move-exception v18

    move-object/from16 v7, v18

    .line 226
    .local v7, e:Ljava/io/IOException;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 234
    .end local v7           #e:Ljava/io/IOException;
    .restart local v4       #arr$:[I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #okCode:I
    .restart local v13       #resp:Lorg/apache/http/HttpResponse;
    .restart local v15       #status:I
    .restart local v17       #statusLine:Lorg/apache/http/StatusLine;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 242
    .end local v12           #okCode:I
    :cond_3
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, msg:Ljava/lang/String;
    new-instance v6, Lorg/apache/http/client/HttpResponseException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object v0, v6

    move v1, v15

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 245
    .local v6, cause:Lorg/apache/http/client/HttpResponseException;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 247
    .local v8, entity:Lorg/apache/http/HttpEntity;
    packed-switch v15, :pswitch_data_0

    .line 263
    :pswitch_0
    div-int/lit8 v16, v15, 0x64

    .line 264
    .local v16, statusClass:I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 269
    const-string v18, "ResponseGetter"

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 254
    .end local v16           #statusClass:I
    :pswitch_1
    if-eqz v8, :cond_4

    .line 255
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 257
    :cond_4
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 274
    .restart local v16       #statusClass:I
    :cond_5
    if-eqz v8, :cond_6

    .line 275
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 279
    :cond_6
    sparse-switch v15, :sswitch_data_0

    .line 302
    packed-switch v16, :pswitch_data_1

    .line 315
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 282
    :sswitch_0
    const-string v18, "Token expired"

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 283
    const-string v18, "ResponseGetter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " reason phrase: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_7
    if-eqz v5, :cond_8

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/net/ResponseGetter;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v18, v0

    const-string v19, "com.google"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_8
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$TokenExpiredException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$TokenExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 291
    :sswitch_1
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$AuthIoException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$AuthIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 293
    :sswitch_2
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$KeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 295
    :sswitch_3
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/net/ResponseGetter;->getRetryMillis(Lorg/apache/http/HttpResponse;)Ljava/lang/Long;

    move-result-object v14

    .line 296
    .local v14, seconds:Ljava/lang/Long;
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Long;)V

    throw v18

    .line 311
    .end local v14           #seconds:Ljava/lang/Long;
    :pswitch_2
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v18

    .line 313
    :pswitch_3
    new-instance v18, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18

    .line 247
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_1
        0x1a1 -> :sswitch_2
        0x1f7 -> :sswitch_3
    .end sparse-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public varargs get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter "uri"
    .end parameter
    .parameter "account"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "okCodes"
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/net/ConnectivityManager;)Z

    move-result v0

    goto :goto_0
.end method
