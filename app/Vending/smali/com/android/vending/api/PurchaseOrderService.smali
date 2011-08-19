.class public Lcom/android/vending/api/PurchaseOrderService;
.super Lcom/android/vending/api/BaseService;
.source "PurchaseOrderService.java"


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
.method public getPurchaseOrderResponse()Lcom/android/vending/model/PurchaseOrderResponse;
    .locals 0

    .prologue
    .line 32
    iget-object p0, p0, Lcom/android/vending/api/PurchaseOrderService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/PurchaseOrderResponse;

    return-object p0
.end method

.method public queuePurchaseOrder(Ljava/lang/String;Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 7
    .parameter "account"
    .parameter "request"

    .prologue
    const/4 v5, 0x0

    .line 24
    new-instance v3, Lcom/android/vending/model/PurchaseOrderResponse;

    invoke-direct {v3}, Lcom/android/vending/model/PurchaseOrderResponse;-><init>()V

    .line 26
    .local v3, response:Lcom/android/vending/model/PurchaseOrderResponse;
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .line 28
    .local v0, batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/PurchaseOrderService;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 29
    return-void
.end method
