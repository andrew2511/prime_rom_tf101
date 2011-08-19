.class public Lcom/android/vending/api/RateCommentService;
.super Lcom/android/vending/api/BaseService;
.source "RateCommentService.java"


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
.method public queueRateComment(Lcom/android/vending/model/RateCommentRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 17
    new-instance v0, Lcom/android/vending/model/RateCommentResponse;

    invoke-direct {v0}, Lcom/android/vending/model/RateCommentResponse;-><init>()V

    .line 18
    .local v0, response:Lcom/android/vending/model/RateCommentResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/RateCommentService;->addRequestWithSecureToken(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 19
    return-void
.end method
