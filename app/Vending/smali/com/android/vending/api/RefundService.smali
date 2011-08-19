.class public Lcom/android/vending/api/RefundService;
.super Lcom/android/vending/api/BaseService;
.source "RefundService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getRefundResponse()Lcom/android/vending/model/RefundResponse;
    .locals 0

    .prologue
    .line 32
    iget-object p0, p0, Lcom/android/vending/api/RefundService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/RefundResponse;

    return-object p0
.end method

.method public queueRefund(Ljava/lang/String;Lcom/android/vending/model/RefundRequest;)V
    .locals 1
    .parameter "account"
    .parameter "refundRequest"

    .prologue
    .line 27
    new-instance v0, Lcom/android/vending/model/RefundResponse;

    invoke-direct {v0}, Lcom/android/vending/model/RefundResponse;-><init>()V

    .line 28
    .local v0, refundResponse:Lcom/android/vending/model/RefundResponse;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/RefundService;->addRequestWithSecureToken(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 29
    return-void
.end method
