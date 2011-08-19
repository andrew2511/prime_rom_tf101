.class public Lcom/android/vending/api/CheckLicenseService;
.super Lcom/android/vending/api/BaseService;
.source "CheckLicenseService.java"


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
.method public getCheckLicenseResponse()Lcom/android/vending/model/CheckLicenseResponse;
    .locals 0

    .prologue
    .line 32
    iget-object p0, p0, Lcom/android/vending/api/CheckLicenseService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/CheckLicenseResponse;

    return-object p0
.end method

.method public queueCheckLicense(Ljava/lang/String;Lcom/android/vending/model/CheckLicenseRequest;)V
    .locals 2
    .parameter "account"
    .parameter "checkLicenseRequest"

    .prologue
    .line 27
    new-instance v0, Lcom/android/vending/model/CheckLicenseResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CheckLicenseResponse;-><init>()V

    .line 28
    .local v0, checkLicenseResponse:Lcom/android/vending/model/CheckLicenseResponse;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/vending/api/CheckLicenseService;->addRequest(Ljava/lang/String;Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;Z)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 29
    return-void
.end method
