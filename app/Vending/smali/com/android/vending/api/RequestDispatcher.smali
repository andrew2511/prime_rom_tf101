.class public Lcom/android/vending/api/RequestDispatcher;
.super Ljava/lang/Object;
.source "RequestDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/RequestDispatcher$1;,
        Lcom/android/vending/api/RequestDispatcher$RequestState;,
        Lcom/android/vending/api/RequestDispatcher$RequestContext;
    }
.end annotation


# instance fields
.field private mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private final mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lorg/apache/http/client/HttpClient;Lcom/android/vending/cache/CacheManager;)V
    .locals 0
    .parameter "clientContext"
    .parameter "httpClient"
    .parameter "cacheManager"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/vending/api/RequestDispatcher;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 138
    iput-object p2, p0, Lcom/android/vending/api/RequestDispatcher;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 139
    iput-object p3, p0, Lcom/android/vending/api/RequestDispatcher;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 140
    return-void
.end method

.method private buildPostParameters([Lorg/apache/http/NameValuePair;Ljava/lang/String;)[Lorg/apache/http/NameValuePair;
    .locals 7
    .parameter "postParams"
    .parameter "protoBase64String"

    .prologue
    const/4 v6, 0x0

    .line 495
    const/4 v1, 0x2

    .line 496
    .local v1, systemPostParamCount:I
    if-eqz p1, :cond_1

    array-length v3, p1

    move v2, v3

    .line 497
    .local v2, userPostParamCount:I
    :goto_0
    add-int v3, v2, v1

    new-array v0, v3, [Lorg/apache/http/NameValuePair;

    .line 500
    .local v0, allPostParams:[Lorg/apache/http/NameValuePair;
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v0, v6

    .line 503
    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "request"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v0, v3

    .line 505
    if-lez v2, :cond_0

    .line 506
    invoke-static {p1, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    :cond_0
    return-object v0

    .end local v0           #allPostParams:[Lorg/apache/http/NameValuePair;
    .end local v2           #userPostParamCount:I
    :cond_1
    move v2, v6

    .line 496
    goto :goto_0
.end method

.method private buildURI(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/net/URI;
    .locals 5
    .parameter "context"

    .prologue
    .line 544
    :try_start_0
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$1000(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    new-instance v2, Ljava/net/URI;

    const-string v3, "http://android.clients.google.com/market/licensing/LicenseRequest"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 564
    .local v2, serviceUrl:Ljava/net/URI;
    :goto_0
    return-object v2

    .line 546
    .end local v2           #serviceUrl:Ljava/net/URI;
    :cond_0
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$1100(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    new-instance v2, Ljava/net/URI;

    const-string v3, "http://android.clients.google.com/vending/suggest/SuggRequest"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v2       #serviceUrl:Ljava/net/URI;
    goto :goto_0

    .line 548
    .end local v2           #serviceUrl:Ljava/net/URI;
    :cond_1
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$1200(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "https://android_efe.clients.google.com/vending/api/efeApiRequest"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, b:Ljava/lang/StringBuilder;
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s7e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$1200(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    new-instance v2, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 552
    .restart local v2       #serviceUrl:Ljava/net/URI;
    goto :goto_0

    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v2           #serviceUrl:Ljava/net/URI;
    :cond_2
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$1300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 555
    new-instance v2, Ljava/net/URI;

    const-string v3, "https://android.clients.google.com/vending/billing/ApiRequest"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v2       #serviceUrl:Ljava/net/URI;
    goto :goto_0

    .line 556
    .end local v2           #serviceUrl:Ljava/net/URI;
    :cond_3
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$1400(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 557
    new-instance v2, Ljava/net/URI;

    const-string v3, "https://android.clients.google.com/vending/api/ApiRequest"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .restart local v2       #serviceUrl:Ljava/net/URI;
    goto :goto_0

    .line 559
    .end local v2           #serviceUrl:Ljava/net/URI;
    :cond_4
    new-instance v2, Ljava/net/URI;

    const-string v3, "http://android.clients.google.com/vending/api/ApiRequest"

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #serviceUrl:Ljava/net/URI;
    goto :goto_0

    .line 561
    .end local v2           #serviceUrl:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 562
    .local v1, e:Ljava/net/URISyntaxException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Could not build URI."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private cachePrefetchedBundle(Lcom/android/vending/model/PrefetchedBundle;)V
    .locals 5
    .parameter "prefetchedBundle"

    .prologue
    .line 472
    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v2

    instance-of v2, v2, Lcom/android/vending/cache/Cacheable;

    if-eqz v2, :cond_1

    .line 473
    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v1

    .line 474
    .local v1, response:Lcom/android/vending/model/BaseResponse;
    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getResponseGroup()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/vending/api/RequestDispatcher;->writeCache(Lcom/android/vending/model/BaseRequest;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/ResponseProperties;)V

    .line 483
    .end local v1           #response:Lcom/android/vending/model/BaseResponse;
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getRequestType()Lcom/android/vending/model/PrefetchedBundle$RequestType;

    move-result-object v2

    sget-object v3, Lcom/android/vending/model/PrefetchedBundle$RequestType;->ASSET:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    if-ne v2, v3, :cond_0

    .line 478
    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/AssetRequest;

    .line 479
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    invoke-virtual {p1}, Lcom/android/vending/model/PrefetchedBundle;->getResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/AssetResponse;

    .line 480
    .local v1, response:Lcom/android/vending/model/AssetResponse;
    iget-object v2, p0, Lcom/android/vending/api/RequestDispatcher;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-virtual {v1}, Lcom/android/vending/model/AssetResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/vending/model/AssetResponse;->getAssets()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/android/vending/api/AssetService;->cacheAssets(Lcom/android/vending/cache/CacheManager;Lcom/android/vending/model/AssetRequest;Lcom/android/vending/model/ResponseProperties;Ljava/util/List;)V

    goto :goto_0
.end method

.method private getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 392
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 393
    .local v0, httpContext:Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.cookie-store"

    iget-object v2, p0, Lcom/android/vending/api/RequestDispatcher;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    invoke-virtual {v2}, Lcom/android/vending/VendingApplication$ApiClientContext;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 394
    return-object v0
.end method

.method private handlePendingNotifications(Lcom/google/common/io/protocol/ProtoBuf;Z)V
    .locals 19
    .parameter "pendingProto"
    .parameter "isSecure"

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/RequestDispatcher;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/vending/VendingApplication$ApiClientContext;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 343
    .local v5, context:Landroid/content/Context;
    new-instance v15, Lcom/android/vending/model/PendingNotifications;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/vending/model/PendingNotifications;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 347
    .local v15, pending:Lcom/android/vending/model/PendingNotifications;
    invoke-virtual {v15}, Lcom/android/vending/model/PendingNotifications;->hasNextCheckMillis()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 348
    invoke-virtual {v15}, Lcom/android/vending/model/PendingNotifications;->getNextCheckMillis()J

    move-result-wide v11

    .line 349
    .local v11, nextCheckMillis:J
    const-wide/16 v17, 0x0

    cmp-long v17, v11, v17

    if-lez v17, :cond_2

    .line 350
    invoke-static {v5, v11, v12}, Lcom/android/vending/util/AlarmService;->setMarketAlarm(Landroid/content/Context;J)V

    .line 356
    .end local v11           #nextCheckMillis:J
    :cond_0
    :goto_0
    if-nez p2, :cond_3

    .line 385
    :cond_1
    return-void

    .line 352
    .restart local v11       #nextCheckMillis:J
    :cond_2
    invoke-static {v5}, Lcom/android/vending/util/AlarmService;->cancelMarketAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 362
    .end local v11           #nextCheckMillis:J
    :cond_3
    invoke-virtual {v15}, Lcom/android/vending/model/PendingNotifications;->getNumNotifications()I

    move-result v14

    .line 363
    .local v14, numPending:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v14, :cond_1

    .line 364
    invoke-virtual {v15, v7}, Lcom/android/vending/model/PendingNotifications;->getNotification(I)Lcom/android/vending/model/DataMessage;

    move-result-object v6

    .line 365
    .local v6, dataMessage:Lcom/android/vending/model/DataMessage;
    invoke-virtual {v6}, Lcom/android/vending/model/DataMessage;->getCategory()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, category:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v17, "com.google.android.c2dm.intent.RECEIVE"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    const-string v17, "com.android.vending"

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/vending/util/Util;->findReceiverName(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v8

    .line 369
    if-nez v8, :cond_4

    .line 370
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Cannot find receiver for intent category: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 363
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 373
    :cond_4
    invoke-virtual {v6}, Lcom/android/vending/model/DataMessage;->getNumAppData()I

    move-result v13

    .line 374
    .local v13, numPairs:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    if-ge v9, v13, :cond_5

    .line 375
    invoke-virtual {v6, v9}, Lcom/android/vending/model/DataMessage;->getAppData(I)Lcom/android/vending/model/AppData;

    move-result-object v3

    .line 376
    .local v3, appData:Lcom/android/vending/model/AppData;
    invoke-virtual {v3}, Lcom/android/vending/model/AppData;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/vending/model/AppData;->getValue()Ljava/lang/String;

    move-result-object v16

    .line 378
    .local v16, value:Ljava/lang/String;
    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 383
    .end local v3           #appData:Lcom/android/vending/model/AppData;
    .end local v10           #key:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private performRequestsOverNetwork(Ljava/lang/String;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V
    .locals 30
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const/16 v23, 0x0

    .line 235
    .local v23, responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    const-string v27, "performRequestsOverNetwork()"

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/vending/util/Log;->start(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 239
    .local v4, startTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/RequestDispatcher;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    move-object/from16 v27, v0

    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$800(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/VendingApplication$ApiClientContext;->getRequestProperties(ZLjava/lang/String;)Lcom/android/vending/model/RequestProperties;

    move-result-object v27

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$702(Lcom/android/vending/api/RequestDispatcher$RequestContext;Lcom/android/vending/model/RequestProperties;)Lcom/android/vending/model/RequestProperties;

    .line 242
    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v27

    const/16 v28, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$700(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/android/vending/model/RequestProperties;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/vending/model/RequestProperties;->getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/vending/api/RequestDispatcher;->buildURI(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/net/URI;

    move-result-object v25

    .line 249
    .local v25, serviceUri:Ljava/net/URI;
    new-instance v20, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 251
    .local v20, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v13, 0x0

    .line 254
    .local v13, httpEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v19

    .line 255
    .local v19, protoBytes:[B
    const/16 v27, 0xb

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v18

    .line 258
    .local v18, protoBase64String:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$900(Lcom/android/vending/api/RequestDispatcher$RequestContext;)[Lorg/apache/http/NameValuePair;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/RequestDispatcher;->buildPostParameters([Lorg/apache/http/NameValuePair;Ljava/lang/String;)[Lorg/apache/http/NameValuePair;

    move-result-object v10

    .line 261
    .local v10, allPostParams:[Lorg/apache/http/NameValuePair;
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object v0, v11

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 262
    .local v11, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 265
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/api/RequestDispatcher;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v12

    .line 266
    .local v12, httpContext:Lorg/apache/http/protocol/HttpContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/api/RequestDispatcher;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 269
    .local v21, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    .line 270
    .local v22, responseCode:I
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/RequestDispatcher;->throwException(Ljava/net/URI;I)V

    .line 274
    new-instance v24, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v27, Lcom/android/vending/model/ApiDefsMessageTypes;->RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    .end local v23           #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    .local v24, responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_1
    new-instance v26, Ljava/util/zip/GZIPInputStream;

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 276
    .local v26, ungzippedContent:Ljava/io/InputStream;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    .line 278
    const/16 v27, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v27

    if-nez v27, :cond_2

    .line 279
    new-instance v27, Lcom/android/vending/api/ApiException;

    const-string v28, "Response wrapper does not contain any responses."

    invoke-direct/range {v27 .. v28}, Lcom/android/vending/api/ApiException;-><init>(Ljava/lang/String;)V

    throw v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    .end local v26           #ungzippedContent:Ljava/io/InputStream;
    :catch_0
    move-exception v27

    move-object/from16 v14, v27

    move-object/from16 v23, v24

    .line 299
    .end local v10           #allPostParams:[Lorg/apache/http/NameValuePair;
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v18           #protoBase64String:Ljava/lang/String;
    .end local v19           #protoBytes:[B
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #responseCode:I
    .end local v24           #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    .local v14, ioe:Ljava/io/IOException;
    .restart local v23       #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    :goto_0
    :try_start_2
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IOException while performing API request: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 300
    .local v16, msg:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 301
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v14           #ioe:Ljava/io/IOException;
    .end local v16           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v27

    :goto_1
    if-eqz v13, :cond_0

    .line 304
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 307
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 308
    .local v6, endTime:J
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "net:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/vending/util/Log;->getRequestLabel(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, label:Ljava/lang/String;
    const/4 v9, 0x0

    .line 310
    .local v9, bytes:I
    if-eqz v23, :cond_1

    .line 311
    invoke-virtual/range {v23 .. v23}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v9

    .line 313
    :cond_1
    invoke-static/range {v4 .. v9}, Lcom/android/vending/util/Log;->logElapsedBytes(JJLjava/lang/String;I)V

    .line 314
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "performRequestsOverNetwork() "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    move v0, v9

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/android/vending/util/Log;->endBytes(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 315
    throw v27

    .line 283
    .end local v6           #endTime:J
    .end local v8           #label:Ljava/lang/String;
    .end local v9           #bytes:I
    .end local v23           #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v10       #allPostParams:[Lorg/apache/http/NameValuePair;
    .restart local v11       #entity:Lorg/apache/http/HttpEntity;
    .restart local v12       #httpContext:Lorg/apache/http/protocol/HttpContext;
    .restart local v18       #protoBase64String:Ljava/lang/String;
    .restart local v19       #protoBytes:[B
    .restart local v21       #response:Lorg/apache/http/HttpResponse;
    .restart local v22       #responseCode:I
    .restart local v24       #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v26       #ungzippedContent:Ljava/io/InputStream;
    :cond_2
    :try_start_3
    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$100(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/util/List;

    move-result-object v27

    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$200(Lcom/android/vending/api/RequestDispatcher$RequestContext;)[Lcom/android/vending/api/RequestDispatcher$RequestState;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v24

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/api/RequestDispatcher;->readResponses(Ljava/util/List;Lcom/google/common/io/protocol/ProtoBuf;[Lcom/android/vending/api/RequestDispatcher$RequestState;)V

    .line 287
    const/16 v27, 0x26

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 288
    const/16 v27, 0x26

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 295
    .local v17, pending:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v27

    const-string v28, "https"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 296
    .local v15, isSecure:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/RequestDispatcher;->handlePendingNotifications(Lcom/google/common/io/protocol/ProtoBuf;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    .end local v15           #isSecure:Z
    .end local v17           #pending:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_3
    if-eqz v13, :cond_4

    .line 304
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 307
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 308
    .restart local v6       #endTime:J
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "net:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {p2 .. p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/vending/util/Log;->getRequestLabel(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 309
    .restart local v8       #label:Ljava/lang/String;
    const/4 v9, 0x0

    .line 310
    .restart local v9       #bytes:I
    if-eqz v24, :cond_5

    .line 311
    invoke-virtual/range {v24 .. v24}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v9

    .line 313
    :cond_5
    invoke-static/range {v4 .. v9}, Lcom/android/vending/util/Log;->logElapsedBytes(JJLjava/lang/String;I)V

    .line 314
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "performRequestsOverNetwork() "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    move v0, v9

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/vending/util/Log;->endBytes(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    return-void

    .line 303
    .end local v6           #endTime:J
    .end local v8           #label:Ljava/lang/String;
    .end local v9           #bytes:I
    .end local v26           #ungzippedContent:Ljava/io/InputStream;
    :catchall_1
    move-exception v27

    move-object/from16 v23, v24

    .end local v24           #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v23       #responseWrapper:Lcom/google/common/io/protocol/ProtoBuf;
    goto/16 :goto_1

    .line 298
    .end local v10           #allPostParams:[Lorg/apache/http/NameValuePair;
    .end local v11           #entity:Lorg/apache/http/HttpEntity;
    .end local v12           #httpContext:Lorg/apache/http/protocol/HttpContext;
    .end local v18           #protoBase64String:Ljava/lang/String;
    .end local v19           #protoBytes:[B
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v22           #responseCode:I
    :catch_1
    move-exception v27

    move-object/from16 v14, v27

    goto/16 :goto_0
.end method

.method private populateFromCache(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Lcom/android/vending/api/RequestDispatcher$RequestState;Z)Z
    .locals 6
    .parameter "baseRequest"
    .parameter "baseResponse"
    .parameter "requestState"
    .parameter "checkDiskToo"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 593
    iget-boolean v2, p3, Lcom/android/vending/api/RequestDispatcher$RequestState;->cacheable:Z

    if-nez v2, :cond_0

    move v2, v4

    .line 623
    :goto_0
    return v2

    .line 597
    :cond_0
    iget-object v3, p0, Lcom/android/vending/api/RequestDispatcher;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    move-object v0, p1

    check-cast v0, Lcom/android/vending/cache/Cacheable;

    move-object v2, v0

    invoke-interface {v3, v2, p4}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v1

    .line 598
    .local v1, cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    if-nez v1, :cond_1

    move v2, v4

    .line 599
    goto :goto_0

    .line 602
    :cond_1
    iput-boolean v5, p3, Lcom/android/vending/api/RequestDispatcher$RequestState;->isCached:Z

    .line 603
    iget-boolean v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    iput-boolean v2, p3, Lcom/android/vending/api/RequestDispatcher$RequestState;->isExpired:Z

    .line 604
    iget-boolean v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->canPostponeRefresh:Z

    iput-boolean v2, p3, Lcom/android/vending/api/RequestDispatcher$RequestState;->canPostponeRefresh:Z

    .line 605
    iget-boolean v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->canPostponeRefresh:Z

    if-eqz v2, :cond_2

    .line 606
    invoke-virtual {p1}, Lcom/android/vending/model/BaseRequest;->getRequestSpecificProperties()Lcom/android/vending/model/RequestSpecificProperties;

    move-result-object v2

    iget-object v3, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/RequestSpecificProperties;->setIfNoneMatch(Ljava/lang/String;)V

    .line 607
    iget-object v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p2, v2}, Lcom/android/vending/model/BaseResponse;->readFromResponseGroup(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 608
    iget-object v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iput-object v2, p3, Lcom/android/vending/api/RequestDispatcher$RequestState;->possiblyExpiredProto:Lcom/google/common/io/protocol/ProtoBuf;

    move v2, v4

    .line 611
    goto :goto_0

    .line 613
    :cond_2
    iget-boolean v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v2, :cond_3

    .line 614
    iget-object v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    iput-object v2, p3, Lcom/android/vending/api/RequestDispatcher$RequestState;->possiblyExpiredProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 615
    invoke-virtual {p1}, Lcom/android/vending/model/BaseRequest;->getRequestSpecificProperties()Lcom/android/vending/model/RequestSpecificProperties;

    move-result-object v2

    iget-object v3, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/vending/model/RequestSpecificProperties;->setIfNoneMatch(Ljava/lang/String;)V

    move v2, v4

    .line 618
    goto :goto_0

    .line 621
    :cond_3
    iget-object v2, v1, Lcom/android/vending/cache/CacheManager$CacheResult;->protoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {p2, v2}, Lcom/android/vending/model/BaseResponse;->readFromResponseGroup(Lcom/google/common/io/protocol/ProtoBuf;)V

    move v2, v5

    .line 623
    goto :goto_0
.end method

.method private readResponses(Ljava/util/List;Lcom/google/common/io/protocol/ProtoBuf;[Lcom/android/vending/api/RequestDispatcher$RequestState;)V
    .locals 19
    .parameter
    .parameter "responseWrapper"
    .parameter "requestStates"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "[",
            "Lcom/android/vending/api/RequestDispatcher$RequestState;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;
        }
    .end annotation

    .prologue
    .line 408
    .local p1, batchRequests:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 409
    .local v8, numRequests:I
    const/4 v11, 0x0

    .line 410
    .local v11, protoResponseIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_5

    .line 411
    aget-object v12, p3, v7

    .line 412
    .local v12, requestState:Lcom/android/vending/api/RequestDispatcher$RequestState;
    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->isCached:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->isExpired:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 410
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 416
    :cond_0
    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/api/RequestManager$BatchRequest;

    invoke-virtual {v4}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v4

    .line 417
    .local v4, baseRequest:Lcom/android/vending/model/BaseRequest;
    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/vending/api/RequestManager$BatchRequest;

    invoke-virtual {v5}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v5

    .line 418
    .local v5, baseResponse:Lcom/android/vending/model/BaseResponse;
    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v13

    .line 424
    .local v13, responseGroup:Lcom/google/common/io/protocol/ProtoBuf;
    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->isExpired:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->canPostponeRefresh:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 425
    new-instance v6, Lcom/android/vending/model/BaseResponse;

    invoke-direct {v6, v5}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/android/vending/model/BaseResponse;)V

    .end local v5           #baseResponse:Lcom/android/vending/model/BaseResponse;
    .local v6, baseResponse:Lcom/android/vending/model/BaseResponse;
    move-object v5, v6

    .line 428
    .end local v6           #baseResponse:Lcom/android/vending/model/BaseResponse;
    .restart local v5       #baseResponse:Lcom/android/vending/model/BaseResponse;
    :cond_1
    invoke-virtual {v5, v13}, Lcom/android/vending/model/BaseResponse;->readFromResponseGroup(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 429
    invoke-virtual {v5}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v14

    .line 431
    .local v14, responseProperties:Lcom/android/vending/model/ResponseProperties;
    invoke-virtual {v14}, Lcom/android/vending/model/ResponseProperties;->getResult()Lcom/android/vending/model/ResponseProperties$ResultType;

    move-result-object v15

    .line 432
    .local v15, result:Lcom/android/vending/model/ResponseProperties$ResultType;
    sget-object v16, Lcom/android/vending/api/RequestDispatcher$1;->$SwitchMap$com$android$vending$model$ResponseProperties$ResultType:[I

    invoke-virtual {v15}, Lcom/android/vending/model/ResponseProperties$ResultType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_0

    .line 452
    :cond_2
    :goto_2
    :pswitch_0
    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->cacheable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 453
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v13

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/api/RequestDispatcher;->writeCache(Lcom/android/vending/model/BaseRequest;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/ResponseProperties;)V

    .line 457
    :cond_3
    invoke-virtual {v5}, Lcom/android/vending/model/BaseResponse;->getPrefetchedBundles()Ljava/util/List;

    move-result-object v9

    .line 458
    .local v9, prefetchedBundles:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PrefetchedBundle;>;"
    if-eqz v9, :cond_4

    .line 459
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 460
    .end local v4           #baseRequest:Lcom/android/vending/model/BaseRequest;
    .local v10, prefetchedIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/vending/model/PrefetchedBundle;>;"
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 461
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/model/PrefetchedBundle;

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/vending/api/RequestDispatcher;->cachePrefetchedBundle(Lcom/android/vending/model/PrefetchedBundle;)V

    goto :goto_3

    .line 438
    .end local v9           #prefetchedBundles:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PrefetchedBundle;>;"
    .end local v10           #prefetchedIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/vending/model/PrefetchedBundle;>;"
    .restart local v4       #baseRequest:Lcom/android/vending/model/BaseRequest;
    :pswitch_1
    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->cacheable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 439
    move-object v0, v12

    iget-object v0, v0, Lcom/android/vending/api/RequestDispatcher$RequestState;->possiblyExpiredProto:Lcom/google/common/io/protocol/ProtoBuf;

    move-object/from16 v16, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vending/model/BaseResponse;->readFromResponseGroup(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 440
    invoke-virtual {v5}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v14

    .line 441
    iget-object v13, v12, Lcom/android/vending/api/RequestDispatcher$RequestState;->possiblyExpiredProto:Lcom/google/common/io/protocol/ProtoBuf;

    goto :goto_2

    .line 447
    :pswitch_2
    new-instance v16, Lcom/android/vending/api/ApiException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error from backend. Request="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", Response="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/android/vending/api/ApiException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 466
    .end local v4           #baseRequest:Lcom/android/vending/model/BaseRequest;
    .restart local v9       #prefetchedBundles:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PrefetchedBundle;>;"
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 468
    .end local v5           #baseResponse:Lcom/android/vending/model/BaseResponse;
    .end local v9           #prefetchedBundles:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PrefetchedBundle;>;"
    .end local v12           #requestState:Lcom/android/vending/api/RequestDispatcher$RequestState;
    .end local v13           #responseGroup:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v14           #responseProperties:Lcom/android/vending/model/ResponseProperties;
    .end local v15           #result:Lcom/android/vending/model/ResponseProperties$ResultType;
    :cond_5
    return-void

    .line 432
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private throwException(Ljava/net/URI;I)V
    .locals 3
    .parameter "uri"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;
        }
    .end annotation

    .prologue
    .line 520
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 521
    return-void

    .line 522
    :cond_0
    const/16 v0, 0x193

    if-ne p2, v0, :cond_1

    .line 523
    new-instance v0, Lcom/android/vending/api/AuthFailureException;

    invoke-direct {v0}, Lcom/android/vending/api/AuthFailureException;-><init>()V

    throw v0

    .line 524
    :cond_1
    const/16 v0, 0x190

    if-ne p2, v0, :cond_2

    .line 525
    new-instance v0, Lcom/android/vending/api/FatalCommunicationException;

    const-string v1, "Sent a bad request."

    invoke-direct {v0, v1}, Lcom/android/vending/api/FatalCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_2
    const/16 v0, 0x1f9

    if-ne p2, v0, :cond_3

    .line 527
    new-instance v0, Lcom/android/vending/api/FatalCommunicationException;

    const-string v1, "Server does not support this protocol version: 2"

    invoke-direct {v0, v1}, Lcom/android/vending/api/FatalCommunicationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_3
    new-instance v0, Lcom/android/vending/api/ApiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vending/api/ApiException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeCache(Lcom/android/vending/model/BaseRequest;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/ResponseProperties;)V
    .locals 8
    .parameter "baseRequest"
    .parameter "responseGroup"
    .parameter "responseProperties"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/vending/api/RequestDispatcher;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    move-object v0, p1

    check-cast v0, Lcom/android/vending/cache/Cacheable;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/android/vending/model/ResponseProperties;->getEtag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/android/vending/model/ResponseProperties;->getMaxAge()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/vending/model/ResponseProperties;->getMaxAgeConsumable()I

    move-result v7

    move-object v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/android/vending/cache/CacheManager;->put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V

    .line 579
    return-void
.end method


# virtual methods
.method public createContext(Ljava/util/List;)Lcom/android/vending/api/RequestDispatcher$RequestContext;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;)",
            "Lcom/android/vending/api/RequestDispatcher$RequestContext;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, batchRequests:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    new-instance v0, Lcom/android/vending/api/RequestDispatcher$RequestContext;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;-><init>(Ljava/util/List;Lcom/android/vending/api/RequestDispatcher$1;)V

    return-object v0
.end method

.method public performRequests(Ljava/lang/String;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V
    .locals 1
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p2}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$600(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/android/vending/api/RequestDispatcher;->performRequestsFromCache(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V

    .line 208
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/RequestDispatcher;->performRequestsOverNetwork(Ljava/lang/String;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V

    .line 209
    return-void
.end method

.method public performRequestsFromCache(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    .locals 9
    .parameter "context"
    .parameter "checkDiskToo"

    .prologue
    .line 160
    const/4 v0, 0x1

    .line 161
    .local v0, allCachedOrPostponed:Z
    const/4 v7, 0x0

    .line 162
    .local v7, requireRpc:Z
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$100(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 163
    .local v5, numRequests:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 164
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$100(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 165
    .local v3, batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-virtual {v3}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v1

    .line 166
    .local v1, baseRequest:Lcom/android/vending/model/BaseRequest;
    invoke-virtual {v3}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v2

    .line 169
    .local v2, baseResponse:Lcom/android/vending/model/BaseResponse;
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$200(Lcom/android/vending/api/RequestDispatcher$RequestContext;)[Lcom/android/vending/api/RequestDispatcher$RequestState;

    move-result-object v8

    aget-object v6, v8, v4

    .line 170
    .local v6, requestState:Lcom/android/vending/api/RequestDispatcher$RequestState;
    instance-of v8, v1, Lcom/android/vending/cache/Cacheable;

    iput-boolean v8, v6, Lcom/android/vending/api/RequestDispatcher$RequestState;->cacheable:Z

    .line 171
    invoke-direct {p0, v1, v2, v6, p2}, Lcom/android/vending/api/RequestDispatcher;->populateFromCache(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Lcom/android/vending/api/RequestDispatcher$RequestState;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 163
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-boolean v8, v6, Lcom/android/vending/api/RequestDispatcher$RequestState;->canPostponeRefresh:Z

    if-nez v8, :cond_1

    invoke-virtual {v3}, Lcom/android/vending/api/RequestManager$BatchRequest;->isCanPostponeRefresh()Z

    move-result v8

    if-nez v8, :cond_1

    .line 175
    const/4 v0, 0x0

    .line 179
    :cond_1
    invoke-static {p1}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$300(Lcom/android/vending/api/RequestDispatcher$RequestContext;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/vending/model/BaseRequest;->createAndAddRequestGroup(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 180
    const/4 v7, 0x1

    goto :goto_1

    .line 182
    .end local v1           #baseRequest:Lcom/android/vending/model/BaseRequest;
    .end local v2           #baseResponse:Lcom/android/vending/model/BaseResponse;
    .end local v3           #batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    .end local v6           #requestState:Lcom/android/vending/api/RequestDispatcher$RequestState;
    :cond_2
    invoke-static {p1, v0}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$402(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)Z

    .line 183
    invoke-static {p1, v7}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$502(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)Z

    .line 184
    const/4 v8, 0x1

    invoke-static {p1, v8}, Lcom/android/vending/api/RequestDispatcher$RequestContext;->access$602(Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)Z

    .line 185
    return-void
.end method
