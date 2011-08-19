.class public Lcom/android/vending/api/InAppPurchaseService;
.super Lcom/android/vending/api/BaseService;
.source "InAppPurchaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/api/InAppPurchaseService$Factory;
    }
.end annotation


# static fields
.field public static sFactoryInstance:Lcom/android/vending/api/InAppPurchaseService$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/vending/api/InAppPurchaseService$Factory;

    invoke-direct {v0}, Lcom/android/vending/api/InAppPurchaseService$Factory;-><init>()V

    sput-object v0, Lcom/android/vending/api/InAppPurchaseService;->sFactoryInstance:Lcom/android/vending/api/InAppPurchaseService$Factory;

    return-void
.end method

.method protected constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 44
    return-void
.end method

.method public static get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;
    .locals 1
    .parameter "requestManager"

    .prologue
    .line 31
    sget-object v0, Lcom/android/vending/api/InAppPurchaseService;->sFactoryInstance:Lcom/android/vending/api/InAppPurchaseService$Factory;

    invoke-virtual {v0, p0}, Lcom/android/vending/api/InAppPurchaseService$Factory;->get(Lcom/android/vending/api/RequestManager;)Lcom/android/vending/api/InAppPurchaseService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInAppPurchaseInformationResponse()Lcom/android/vending/model/InAppPurchaseInformationResponse;
    .locals 0

    .prologue
    .line 69
    iget-object p0, p0, Lcom/android/vending/api/InAppPurchaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/InAppPurchaseInformationResponse;

    return-object p0
.end method

.method public getInAppRestoreTransactionsResponse()Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    .locals 0

    .prologue
    .line 101
    iget-object p0, p0, Lcom/android/vending/api/InAppPurchaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;

    return-object p0
.end method

.method public getPurchaseProductResponse()Lcom/android/vending/model/PurchaseProductResponse;
    .locals 0

    .prologue
    .line 58
    iget-object p0, p0, Lcom/android/vending/api/InAppPurchaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/PurchaseProductResponse;

    return-object p0
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 0
    .parameter "request"
    .parameter "isCached"

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/android/vending/api/BaseService;->onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V

    .line 49
    return-void
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/AckNotificationsRequest;)Lcom/android/vending/model/AckNotificationsResponse;
    .locals 1
    .parameter "account"
    .parameter "request"

    .prologue
    .line 73
    new-instance v0, Lcom/android/vending/model/AckNotificationsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/AckNotificationsResponse;-><init>()V

    .line 74
    .local v0, response:Lcom/android/vending/model/AckNotificationsResponse;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 75
    return-object v0
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/CheckForNotificationsRequest;)Lcom/android/vending/model/CheckForNotificationsResponse;
    .locals 1
    .parameter "account"
    .parameter "request"

    .prologue
    .line 84
    new-instance v0, Lcom/android/vending/model/CheckForNotificationsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CheckForNotificationsResponse;-><init>()V

    .line 85
    .local v0, response:Lcom/android/vending/model/CheckForNotificationsResponse;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 86
    return-object v0
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/InAppPurchaseInformationRequest;)Lcom/android/vending/model/InAppPurchaseInformationResponse;
    .locals 1
    .parameter "account"
    .parameter "request"

    .prologue
    .line 63
    new-instance v0, Lcom/android/vending/model/InAppPurchaseInformationResponse;

    invoke-direct {v0}, Lcom/android/vending/model/InAppPurchaseInformationResponse;-><init>()V

    .line 64
    .local v0, response:Lcom/android/vending/model/InAppPurchaseInformationResponse;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 65
    return-object v0
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/InAppRestoreTransactionsRequest;)Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    .locals 1
    .parameter "account"
    .parameter "request"

    .prologue
    .line 95
    new-instance v0, Lcom/android/vending/model/InAppRestoreTransactionsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/InAppRestoreTransactionsResponse;-><init>()V

    .line 96
    .local v0, response:Lcom/android/vending/model/InAppRestoreTransactionsResponse;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 97
    return-object v0
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/PurchaseProductRequest;)Lcom/android/vending/model/PurchaseProductResponse;
    .locals 1
    .parameter "account"
    .parameter "request"

    .prologue
    .line 52
    new-instance v0, Lcom/android/vending/model/PurchaseProductResponse;

    invoke-direct {v0}, Lcom/android/vending/model/PurchaseProductResponse;-><init>()V

    .line 53
    .local v0, response:Lcom/android/vending/model/PurchaseProductResponse;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/InAppPurchaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 54
    return-object v0
.end method
