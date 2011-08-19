.class public Lcom/android/vending/api/GetCategoriesService;
.super Lcom/android/vending/api/BaseService;
.source "GetCategoriesService.java"


# static fields
.field private static volatile sCachedCategoriesResponse:Lcom/android/vending/model/GetCategoriesResponse;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestManager"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/android/vending/model/GetCategoriesResponse;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/vending/api/GetCategoriesService;->sCachedCategoriesResponse:Lcom/android/vending/model/GetCategoriesResponse;

    return-object v0
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 37
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/GetCategoriesRequest;

    .line 41
    const-class v0, Lcom/android/vending/api/GetCategoriesService;

    monitor-enter v0

    .line 45
    if-eqz p2, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/vending/api/GetCategoriesService;->sCachedCategoriesResponse:Lcom/android/vending/model/GetCategoriesResponse;

    if-nez v1, :cond_1

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/vending/api/GetCategoriesService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    check-cast p0, Lcom/android/vending/model/GetCategoriesResponse;

    sput-object p0, Lcom/android/vending/api/GetCategoriesService;->sCachedCategoriesResponse:Lcom/android/vending/model/GetCategoriesResponse;

    .line 48
    :cond_1
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queueRequest()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/android/vending/model/GetCategoriesRequest;

    invoke-direct {v0}, Lcom/android/vending/model/GetCategoriesRequest;-><init>()V

    .line 25
    .local v0, request:Lcom/android/vending/model/GetCategoriesRequest;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/vending/model/GetCategoriesRequest;->setPrefetchPromoData(Z)V

    .line 26
    new-instance v1, Lcom/android/vending/model/GetCategoriesResponse;

    invoke-direct {v1}, Lcom/android/vending/model/GetCategoriesResponse;-><init>()V

    .line 27
    .local v1, response:Lcom/android/vending/model/GetCategoriesResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/vending/api/GetCategoriesService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 28
    return-void
.end method
