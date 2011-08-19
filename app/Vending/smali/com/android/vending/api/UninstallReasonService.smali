.class public Lcom/android/vending/api/UninstallReasonService;
.super Lcom/android/vending/api/BaseService;
.source "UninstallReasonService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 14
    return-void
.end method


# virtual methods
.method public queueUninstallReasonRequest(Lcom/android/vending/model/UninstallReasonRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 17
    new-instance v0, Lcom/android/vending/model/UninstallReasonResponse;

    invoke-direct {v0}, Lcom/android/vending/model/UninstallReasonResponse;-><init>()V

    .line 18
    .local v0, response:Lcom/android/vending/model/UninstallReasonResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/UninstallReasonService;->addRequestWithSecureToken(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 19
    return-void
.end method
