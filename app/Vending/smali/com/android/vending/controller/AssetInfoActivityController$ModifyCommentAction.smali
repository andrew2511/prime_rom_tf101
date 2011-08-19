.class Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "AssetInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/controller/AssetInfoActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ModifyCommentAction"
.end annotation


# instance fields
.field private final mAssetId:Ljava/lang/String;

.field private final mBaseActivity:Lcom/android/vending/BaseActivity;

.field private mCommentString:Ljava/lang/String;

.field private mRating:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/android/vending/BaseActivity;)V
    .locals 0
    .parameter "assetId"
    .parameter "rating"
    .parameter "commentString"
    .parameter "activity"

    .prologue
    .line 295
    invoke-direct {p0, p4}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 296
    iput-object p4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    .line 297
    iput-object p1, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mAssetId:Ljava/lang/String;

    .line 298
    iput-object p2, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mRating:Ljava/lang/Integer;

    .line 299
    iput-object p3, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mCommentString:Ljava/lang/String;

    .line 300
    return-void
.end method


# virtual methods
.method public displayResults()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public prepare()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, deleteRequested:Z
    new-instance v3, Lcom/android/vending/model/ModifyCommentRequest;

    invoke-direct {v3}, Lcom/android/vending/model/ModifyCommentRequest;-><init>()V

    .line 306
    .local v3, modifyRequest:Lcom/android/vending/model/ModifyCommentRequest;
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mAssetId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/vending/model/ModifyCommentRequest;->setAssetId(Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mRating:Ljava/lang/Integer;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mCommentString:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 308
    const/4 v2, 0x1

    .line 309
    invoke-virtual {v3, v7}, Lcom/android/vending/model/ModifyCommentRequest;->setDeleteComment(Z)V

    .line 320
    :goto_0
    new-instance v1, Lcom/android/vending/api/ModifyCommentService;

    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v1, v4}, Lcom/android/vending/api/ModifyCommentService;-><init>(Lcom/android/vending/api/RequestManager;)V

    .line 322
    .local v1, commentUpdateService:Lcom/android/vending/api/ModifyCommentService;
    invoke-virtual {v1, v3}, Lcom/android/vending/api/ModifyCommentService;->queueModifyComment(Lcom/android/vending/model/ModifyCommentRequest;)V

    .line 326
    if-eqz v2, :cond_4

    .line 327
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 340
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mAssetId:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/android/vending/util/CommentUtil;->invalidateCachedCommentsResponses(Ljava/lang/String;Z)V

    .line 341
    return-void

    .line 311
    .end local v1           #commentUpdateService:Lcom/android/vending/api/ModifyCommentService;
    :cond_1
    new-instance v0, Lcom/android/vending/model/Comment;

    invoke-direct {v0}, Lcom/android/vending/model/Comment;-><init>()V

    .line 312
    .local v0, comment:Lcom/android/vending/model/Comment;
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mRating:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mRating:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/vending/model/Comment;->setRating(I)V

    .line 315
    :cond_2
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mCommentString:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mCommentString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/vending/model/Comment;->setBody(Ljava/lang/String;)V

    .line 318
    :cond_3
    invoke-virtual {v3, v0}, Lcom/android/vending/model/ModifyCommentRequest;->setComment(Lcom/android/vending/model/Comment;)V

    goto :goto_0

    .line 330
    .end local v0           #comment:Lcom/android/vending/model/Comment;
    .restart local v1       #commentUpdateService:Lcom/android/vending/api/ModifyCommentService;
    :cond_4
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mRating:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 331
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v4

    const-string v5, "rating"

    iget-object v6, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mRating:Ljava/lang/Integer;

    invoke-virtual {v4, v5, v6}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    .line 334
    :cond_5
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mCommentString:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v4}, Lcom/android/vending/BaseActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v4

    const-string v5, "comment"

    iget-object v6, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mCommentString:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v4, p0, Lcom/android/vending/controller/AssetInfoActivityController$ModifyCommentAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-virtual {v4, v7}, Lcom/android/vending/BaseActivity;->updateActivity(I)V

    goto :goto_1
.end method
