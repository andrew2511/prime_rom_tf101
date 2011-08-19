.class public abstract Lcom/android/vending/api/BaseService;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/android/vending/api/RequestManager$ResponseListener;


# instance fields
.field protected mLastResponse:Lcom/android/vending/model/BaseResponse;

.field protected final mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 27
    return-void
.end method


# virtual methods
.method protected addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/api/BaseService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method protected addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .parameter "request"
    .parameter "response"
    .parameter "canPostponeRefresh"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method protected addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .parameter "account"
    .parameter "batchRequest"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 101
    return-object p2
.end method

.method protected addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 1
    .parameter "account"
    .parameter "request"
    .parameter "response"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/vending/api/BaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    return-object v0
.end method

.method protected addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 6
    .parameter "account"
    .parameter "request"
    .parameter "response"
    .parameter "canPostponeRefresh"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v0, p0, p2, p3, p4}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    move-result-object v0

    goto :goto_0
.end method

.method protected addRequestWithSecureToken(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 7
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 111
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .line 113
    .local v0, batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    iget-object v1, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v1, v0}, Lcom/android/vending/api/RequestManager;->addRequest(Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 114
    return-object v0
.end method

.method protected addRequestWithSecureToken(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;
    .locals 7
    .parameter "account"
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v4, 0x1

    .line 119
    new-instance v0, Lcom/android/vending/api/RequestManager$BatchRequest;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/api/RequestManager$BatchRequest;-><init>(Lcom/android/vending/api/RequestManager$ResponseListener;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;ZZZ)V

    .line 121
    .local v0, batchRequest:Lcom/android/vending/api/RequestManager$BatchRequest;
    iget-object v1, p0, Lcom/android/vending/api/BaseService;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v1, p1, v0}, Lcom/android/vending/api/RequestManager;->addRequest(Ljava/lang/String;Lcom/android/vending/api/RequestManager$BatchRequest;)V

    .line 122
    return-object v0
.end method

.method public clearResponse()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/api/BaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .line 50
    return-void
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/vending/api/BaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResponse(Lcom/android/vending/api/RequestManager$BatchRequest;Z)V
    .locals 1
    .parameter "request"
    .parameter "isCached"

    .prologue
    .line 34
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager$BatchRequest;->getBaseResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/api/BaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .line 35
    return-void
.end method
