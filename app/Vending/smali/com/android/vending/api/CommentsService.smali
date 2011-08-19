.class public Lcom/android/vending/api/CommentsService;
.super Lcom/android/vending/api/BaseService;
.source "CommentsService.java"


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
.method public getCommentResponse()Lcom/android/vending/model/CommentsResponse;
    .locals 0

    .prologue
    .line 29
    iget-object p0, p0, Lcom/android/vending/api/CommentsService;->mLastResponse:Lcom/android/vending/model/BaseResponse;

    .end local p0
    check-cast p0, Lcom/android/vending/model/CommentsResponse;

    return-object p0
.end method

.method public queueCommentsRequest(Lcom/android/vending/model/CommentsRequest;)V
    .locals 1
    .parameter "commentsRequest"

    .prologue
    .line 24
    new-instance v0, Lcom/android/vending/model/CommentsResponse;

    invoke-direct {v0}, Lcom/android/vending/model/CommentsResponse;-><init>()V

    .line 25
    .local v0, commentsResponse:Lcom/android/vending/model/CommentsResponse;
    invoke-virtual {p0, p1, v0}, Lcom/android/vending/api/CommentsService;->addRequest(Lcom/android/vending/model/BaseRequest;Lcom/android/vending/model/BaseResponse;)Lcom/android/vending/api/RequestManager$BatchRequest;

    .line 26
    return-void
.end method
