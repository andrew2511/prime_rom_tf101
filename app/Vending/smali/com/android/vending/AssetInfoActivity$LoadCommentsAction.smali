.class Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCommentsAction"
.end annotation


# instance fields
.field private volatile mPageNum:I

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;I)V
    .locals 0
    .parameter
    .parameter "pageNum"

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    .line 1048
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 1049
    iput p2, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->mPageNum:I

    .line 1050
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 3

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$2300(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/api/CommentsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/api/CommentsService;->getCommentResponse()Lcom/android/vending/model/CommentsResponse;

    move-result-object v1

    iget v2, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->mPageNum:I

    invoke-static {v0, v1, v2}, Lcom/android/vending/AssetInfoActivity;->access$2400(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/model/CommentsResponse;I)V

    .line 1063
    return-void
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$2500(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v0}, Lcom/android/vending/AssetInfoActivity;->access$2500(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->getLoadingAction()Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    move-result-object v0

    .line 1070
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mServerAssetId:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->mPageNum:I

    iget-object v3, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v3}, Lcom/android/vending/AssetInfoActivity;->access$2200(Lcom/android/vending/AssetInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/vending/util/CommentUtil;->createCommentsRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/android/vending/model/CommentsRequest;

    move-result-object v0

    .line 1056
    .local v0, commentsRequest:Lcom/android/vending/model/CommentsRequest;
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-static {v1}, Lcom/android/vending/AssetInfoActivity;->access$2300(Lcom/android/vending/AssetInfoActivity;)Lcom/android/vending/api/CommentsService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/vending/api/CommentsService;->queueCommentsRequest(Lcom/android/vending/model/CommentsRequest;)V

    .line 1057
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$LoadCommentsAction;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, v1, Lcom/android/vending/AssetInfoActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 1058
    return-void
.end method
