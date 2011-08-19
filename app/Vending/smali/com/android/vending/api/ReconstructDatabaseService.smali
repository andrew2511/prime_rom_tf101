.class public Lcom/android/vending/api/ReconstructDatabaseService;
.super Lcom/android/vending/api/BaseService;
.source "ReconstructDatabaseService.java"


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
.method public getResponse()Lcom/android/vending/model/ReconstructDatabaseResponse;
    .locals 0

    .prologue
    .line 25
    iget-object p0, p0, Lcom/android/vending/api/ReconstructDatabaseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/ReconstructDatabaseResponse;

    return-object p0
.end method

.method public queueRequest(Ljava/lang/String;Lcom/android/vending/model/ReconstructDatabaseRequest;)V
    .locals 2
    .parameter "account"
    .parameter "request"

    .prologue
    .line 20
    new-instance v0, Lcom/android/vending/model/ReconstructDatabaseResponse;

    invoke-direct {v0}, Lcom/android/vending/model/ReconstructDatabaseResponse;-><init>()V

    .line 21
    .local v0, response:Lcom/android/vending/model/ReconstructDatabaseResponse;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/vending/api/ReconstructDatabaseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 22
    return-void
.end method
