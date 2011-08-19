.class public Lcom/android/vending/api/GetCarrierInfoService;
.super Lcom/android/vending/api/BaseService;
.source "GetCarrierInfoService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestManager"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/android/vending/model/GetCarrierInfoResponse;
    .locals 0

    .prologue
    .line 26
    iget-object p0, p0, Lcom/android/vending/api/GetCarrierInfoService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/GetCarrierInfoResponse;

    return-object p0
.end method

.method public queueRequest()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/vending/model/GetCarrierInfoRequest;

    invoke-direct {v0}, Lcom/android/vending/model/GetCarrierInfoRequest;-><init>()V

    .line 21
    .local v0, request:Lcom/android/vending/model/GetCarrierInfoRequest;
    new-instance v1, Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-direct {v1}, Lcom/android/vending/model/GetCarrierInfoResponse;-><init>()V

    .line 22
    .local v1, response:Lcom/android/vending/model/GetCarrierInfoResponse;
    invoke-virtual {p0, v0, v1}, Lcom/android/vending/api/GetCarrierInfoService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 23
    return-void
.end method
