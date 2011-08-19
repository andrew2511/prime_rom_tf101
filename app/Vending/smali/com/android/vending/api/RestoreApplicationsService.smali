.class public Lcom/android/vending/api/RestoreApplicationsService;
.super Lcom/android/vending/api/BaseService;
.source "RestoreApplicationsService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getResponse()Lcom/android/vending/model/RestoreApplicationsResponse;
    .locals 0

    .prologue
    .line 42
    iget-object p0, p0, Lcom/android/vending/api/RestoreApplicationsService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/RestoreApplicationsResponse;

    return-object p0
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/DeviceConfiguration;)V
    .locals 3
    .parameter "account"
    .parameter "backupAndroidId"
    .parameter "configuration"

    .prologue
    .line 32
    new-instance v1, Lcom/android/vending/model/RestoreApplicationsRequest;

    invoke-direct {v1}, Lcom/android/vending/model/RestoreApplicationsRequest;-><init>()V

    invoke-virtual {v1, p2}, Lcom/android/vending/model/RestoreApplicationsRequest;->setTargetAndroidId(Ljava/lang/String;)Lcom/android/vending/model/RestoreApplicationsRequest;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Lcom/android/vending/model/RestoreApplicationsRequest;->setTOSVersion(Ljava/lang/String;)Lcom/android/vending/model/RestoreApplicationsRequest;

    move-result-object v0

    .line 35
    .local v0, request:Lcom/android/vending/model/RestoreApplicationsRequest;
    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {v0, p3}, Lcom/android/vending/model/RestoreApplicationsRequest;->setDeviceConfiguration(Lcom/android/vending/model/DeviceConfiguration;)Lcom/android/vending/model/RestoreApplicationsRequest;

    .line 38
    :cond_0
    new-instance v1, Lcom/android/vending/model/RestoreApplicationsResponse;

    invoke-direct {v1}, Lcom/android/vending/model/RestoreApplicationsResponse;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/vending/api/RestoreApplicationsService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 39
    return-void
.end method
