.class public Lcom/android/vending/api/ContentSyncService;
.super Lcom/android/vending/api/BaseService;
.source "ContentSyncService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getContentSyncResponse()Lcom/android/vending/model/ContentSyncResponse;
    .locals 0

    .prologue
    .line 24
    iget-object p0, p0, Lcom/android/vending/api/ContentSyncService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/ContentSyncResponse;

    return-object p0
.end method

.method public queueContentSync(Ljava/lang/String;Lcom/android/vending/model/ContentSyncRequest;)V
    .locals 2
    .parameter "account"
    .parameter "request"

    .prologue
    .line 19
    new-instance v0, Lcom/android/vending/model/ContentSyncResponse;

    invoke-direct {v0}, Lcom/android/vending/model/ContentSyncResponse;-><init>()V

    .line 20
    .local v0, response:Lcom/android/vending/model/ContentSyncResponse;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/vending/api/ContentSyncService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 21
    return-void
.end method
