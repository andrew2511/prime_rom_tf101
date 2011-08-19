.class public Lcom/android/vending/api/ModifyCommentService;
.super Lcom/android/vending/api/BaseService;
.source "ModifyCommentService.java"


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "requestMgr"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/vending/api/BaseService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 20
    return-void
.end method


# virtual methods
.method public queueModifyComment(Lcom/android/vending/model/ModifyCommentRequest;)V
    .locals 1
    .parameter "commentsRequest"

    .prologue
    .line 26
    new-instance v0, Lcom/android/vending/api/ModifyCommentResponse;

    invoke-direct {v0}, Lcom/android/vending/api/ModifyCommentResponse;-><init>()V

    .line 27
    .local v0, commentsResponse:Lcom/android/vending/api/ModifyCommentResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/ModifyCommentService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 28
    return-void
.end method
