.class public Lcom/android/vending/AsynchRateCommentRequest;
.super Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;
.source "AsynchRateCommentRequest.java"


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private final mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

.field private final mCreatorId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/RateCommentRequest$CommentRating;)V
    .locals 0
    .parameter "assetId"
    .parameter "creatorId"
    .parameter "rating"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/vending/AsynchRateCommentRequest;->mAssetId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/android/vending/AsynchRateCommentRequest;->mCreatorId:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/android/vending/AsynchRateCommentRequest;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 31
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 3
    .parameter "manager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vending/api/ApiException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/android/vending/model/RateCommentRequest;

    invoke-direct {v0}, Lcom/android/vending/model/RateCommentRequest;-><init>()V

    .line 35
    .local v0, rateCommentRequest:Lcom/android/vending/model/RateCommentRequest;
    iget-object v1, p0, Lcom/android/vending/AsynchRateCommentRequest;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/RateCommentRequest;->setAssetId(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/vending/AsynchRateCommentRequest;->mCreatorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/RateCommentRequest;->setCreatorId(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/android/vending/AsynchRateCommentRequest;->mCommentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/RateCommentRequest;->setCommentRating(Lcom/android/vending/model/RateCommentRequest$CommentRating;)V

    .line 39
    new-instance v1, Lcom/android/vending/api/RateCommentService;

    invoke-direct {v1, p1}, Lcom/android/vending/api/RateCommentService;-><init>(Lcom/android/vending/api/RequestManager;)V

    invoke-virtual {v1, v0}, Lcom/android/vending/api/RateCommentService;->queueRateComment(Lcom/android/vending/model/RateCommentRequest;)V

    .line 40
    invoke-virtual {p1}, Lcom/android/vending/api/RequestManager;->doRequests()V

    .line 44
    iget-object v1, p0, Lcom/android/vending/AsynchRateCommentRequest;->mAssetId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/vending/util/CommentUtil;->invalidateCachedCommentsResponses(Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 48
    const-string v0, "Failed to rate comment on %s by user %s: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/AsynchRateCommentRequest;->mAssetId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vending/AsynchRateCommentRequest;->mCreatorId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method
