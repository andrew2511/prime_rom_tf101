.class public Lcom/android/vending/api/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;,
        Lcom/android/vending/api/RequestManager$ResponseListener;,
        Lcom/android/vending/api/RequestManager$BatchRequest;,
        Lcom/android/vending/api/RequestManager$AccountRequestManager;
    }
.end annotation


# static fields
.field private static sHasSetServerVersion:Z


# instance fields
.field private mAccountManagerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/vending/api/RequestManager$AccountRequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/vending/VendingApplication;

.field private mCacheManager:Lcom/android/vending/cache/CacheManager;

.field private final mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

.field private mGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

.field private mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/api/RequestManager;->sHasSetServerVersion:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mAccountManagerMap:Ljava/util/HashMap;

    .line 179
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mApplication:Lcom/android/vending/VendingApplication;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lcom/android/vending/compat/GoogleHttpClient;Lcom/android/vending/cache/CacheManager;)V
    .locals 4
    .parameter "clientContext"
    .parameter "googleHttpClient"
    .parameter "cacheManager"

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mAccountManagerMap:Ljava/util/HashMap;

    .line 187
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mApplication:Lcom/android/vending/VendingApplication;

    .line 188
    iput-object p1, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    .line 189
    iput-object p2, p0, Lcom/android/vending/api/RequestManager;->mGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    .line 190
    iput-object p3, p0, Lcom/android/vending/api/RequestManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    .line 191
    new-instance v0, Lcom/android/vending/api/RequestDispatcher;

    iget-object v1, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager;->mGoogleHttpClient:Lcom/android/vending/compat/GoogleHttpClient;

    iget-object v3, p0, Lcom/android/vending/api/RequestManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/api/RequestDispatcher;-><init>(Lcom/android/vending/VendingApplication$ApiClientContext;Lorg/apache/http/client/HttpClient;Lcom/android/vending/cache/CacheManager;)V

    iput-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/RequestDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/api/RequestManager;Lcom/android/vending/model/BaseResponse;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/vending/api/RequestManager;->isResponseSuccessful(Lcom/android/vending/model/BaseResponse;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/vending/api/RequestManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct/range {p0 .. p5}, Lcom/android/vending/api/RequestManager;->doRequestsOverNetwork(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V

    return-void
.end method

.method private doRequestsOverNetwork(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    .locals 6
    .parameter "account"
    .parameter
    .parameter
    .parameter "requestContext"
    .parameter "isBestEffort"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Lcom/android/vending/api/RequestDispatcher$RequestContext;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    .local p3, notifiedRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    const/4 v5, 0x0

    .line 303
    const/4 v1, 0x1

    .line 304
    .local v1, isAllOk:Z
    iget-object v4, p0, Lcom/android/vending/api/RequestManager;->mRequestDispatcher:Lcom/android/vending/api/RequestDispatcher;

    invoke-virtual {v4, p1, p4}, Lcom/android/vending/api/RequestDispatcher;->performRequests(Ljava/lang/String;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V

    .line 311
    if-nez p5, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    .line 314
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 315
    .local v2, request:Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-direct {p0, v2}, Lcom/android/vending/api/RequestManager;->setServerVersion(Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 316
    invoke-virtual {v2}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/vending/api/RequestManager;->isResponseSuccessful(Lcom/android/vending/model/BaseResponse;)Z

    move-result v3

    .line 317
    .local v3, success:Z
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    move v1, v4

    .line 318
    :goto_1
    if-eqz v3, :cond_3

    .line 319
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 321
    invoke-virtual {v2}, Lcom/android/vending/api/RequestManager$BatchRequest;->getListener()Lcom/android/vending/api/RequestManager$ResponseListener;

    move-result-object v4

    invoke-interface {v4, v2, v5}, Lcom/android/vending/api/RequestManager$ResponseListener;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    goto :goto_0

    :cond_2
    move v1, v5

    .line 317
    goto :goto_1

    .line 325
    :cond_3
    if-nez p5, :cond_1

    .line 326
    invoke-virtual {p0, p1, v2}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)V

    goto :goto_0

    .line 331
    .end local v2           #request:Lcom/android/vending/api/RequestManager$BatchRequest;
    .end local v3           #success:Z
    :cond_4
    if-nez v1, :cond_5

    if-nez p5, :cond_5

    .line 332
    new-instance v4, Lcom/android/vending/api/ServiceFailureException;

    const-string v5, "Some requests failed on the server."

    invoke-direct {v4, v5}, Lcom/android/vending/api/ServiceFailureException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 334
    :cond_5
    return-void
.end method

.method private isResponseSuccessful(Lcom/android/vending/model/BaseResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-virtual {p1}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v0

    .line 354
    .local v0, responseProperties:Lcom/android/vending/model/ResponseProperties;
    if-nez v0, :cond_0

    move v2, v3

    .line 364
    :goto_0
    return v2

    .line 357
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/model/ResponseProperties;->getResult()Lcom/android/vending/model/ResponseProperties$ResultType;

    move-result-object v1

    .line 358
    .local v1, responseResult:Lcom/android/vending/model/ResponseProperties$ResultType;
    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->INTERNAL_SERVICE_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->BAD_REQUEST:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-ne v1, v2, :cond_2

    :cond_1
    move v2, v3

    .line 360
    goto :goto_0

    .line 361
    :cond_2
    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->OK:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->NOT_MODIFIED:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/vending/model/ResponseProperties$ResultType;->USER_INPUT_ERROR:Lcom/android/vending/model/ResponseProperties$ResultType;

    if-ne v1, v2, :cond_4

    .line 364
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 366
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot handle this result type: "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private setServerVersion(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 383
    sget-boolean v0, Lcom/android/vending/api/RequestManager;->sHasSetServerVersion:Z

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/vending/api/RequestManager;->sHasSetServerVersion:Z

    .line 385
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mClientContext:Lcom/android/vending/VendingApplication$ApiClientContext;

    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/BaseResponse;->getResponseProperties()Lcom/android/vending/model/ResponseProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/ResponseProperties;->getServerVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/vending/VendingApplication$ApiClientContext;->setServerVersion(I)V

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRequest(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 6
    .parameter "listener"
    .parameter "request"
    .parameter "response"
    .parameter "canPostponeRefresh"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 2
    .parameter "account"
    .parameter "listener"
    .parameter "request"
    .parameter "response"
    .parameter "canPostponeRefresh"

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)V

    .line 219
    .local v0, result:Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-object v0

    .line 218
    .end local v0           #result:Lcom/android/vending/api/RequestManager$BatchRequest;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)V
    .locals 1
    .parameter "account"
    .parameter "request"

    .prologue
    .line 236
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/api/RequestManager;->getAccountManager(Ljava/lang/String;)Lcom/android/vending/api/RequestManager$AccountRequestManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/api/RequestManager;->doRequests(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRequests(Ljava/lang/String;)V
    .locals 1
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/api/RequestManager;->getAccountManager(Ljava/lang/String;)Lcom/android/vending/api/RequestManager$AccountRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->doRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doRequestsFromCache(Z)Z
    .locals 1
    .parameter "checkDiskToo"

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/api/RequestManager;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/api/RequestManager;->getAccountManager(Ljava/lang/String;)Lcom/android/vending/api/RequestManager$AccountRequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->doRequestsFromCache(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getAccountManager(Ljava/lang/String;)Lcom/android/vending/api/RequestManager$AccountRequestManager;
    .locals 2
    .parameter "account"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mAccountManagerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mAccountManagerMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/vending/api/RequestManager$AccountRequestManager;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/api/RequestManager$AccountRequestManager;-><init>(Lcom/android/vending/api/RequestManager;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mAccountManagerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/api/RequestManager$AccountRequestManager;

    return-object p0
.end method

.method protected getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/vending/api/RequestManager;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v0}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized reset(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/vending/api/RequestManager;->getAccountManager(Ljava/lang/String;)Lcom/android/vending/api/RequestManager$AccountRequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/api/RequestManager$AccountRequestManager;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
