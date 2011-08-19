.class public Lcom/android/vending/api/BillingEventService;
.super Lcom/android/vending/api/BaseService;
.source "BillingEventService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 15
    return-void
.end method


# virtual methods
.method public queueBillingEvent(Lcom/android/vending/model/BillingEventRequest;)V
    .locals 1
    .parameter "billingEventRequest"

    .prologue
    .line 21
    new-instance v0, Lcom/android/vending/model/BillingEventResponse;

    invoke-direct {v0}, Lcom/android/vending/model/BillingEventResponse;-><init>()V

    .line 22
    .local v0, billingEventResponse:Lcom/android/vending/model/BillingEventResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/BillingEventService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 23
    return-void
.end method
