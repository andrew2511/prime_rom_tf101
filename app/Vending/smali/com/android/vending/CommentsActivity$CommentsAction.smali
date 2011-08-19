.class Lcom/android/vending/CommentsActivity$CommentsAction;
.super Lcom/android/vending/BaseActivity$BaseAction;
.source "CommentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/CommentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommentsAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/CommentsActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/CommentsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    .line 233
    invoke-direct {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 234
    return-void
.end method


# virtual methods
.method protected displayErrorUi(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$500(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/model/Asset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$1400(Lcom/android/vending/CommentsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity$BaseAction;->displayErrorUi(Ljava/lang/Throwable;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v0}, Lcom/android/vending/CommentsActivity;->showErrorFooter()V

    goto :goto_0
.end method

.method protected displayResults()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 252
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$1000(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/api/CommentsService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/api/CommentsService;->getCommentResponse()Lcom/android/vending/model/CommentsResponse;

    move-result-object v0

    .line 254
    .local v0, commentResponse:Lcom/android/vending/model/CommentsResponse;
    invoke-virtual {v0}, Lcom/android/vending/model/CommentsResponse;->getNumComments()I

    move-result v2

    .line 255
    .local v2, numCommentsReturned:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 256
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$1100(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/CommentsAdapter;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CommentsResponse;->getComment(I)Lcom/android/vending/model/Comment;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/vending/CommentsAdapter;->addComment(Lcom/android/vending/model/Comment;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$500(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/model/Asset;

    move-result-object v4

    if-nez v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$1200(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/AssetItemAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v4

    if-lt v4, v8, :cond_1

    .line 262
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    iget-object v5, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v5}, Lcom/android/vending/CommentsActivity;->access$1200(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/AssetItemAdapter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/vending/CommentsActivity;->access$502(Lcom/android/vending/CommentsActivity;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;

    .line 266
    :cond_1
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$808(Lcom/android/vending/CommentsActivity;)I

    .line 268
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$800(Lcom/android/vending/CommentsActivity;)I

    move-result v4

    invoke-static {v4}, Lcom/android/vending/util/CommentUtil;->getStartIndexForPage(I)I

    move-result v3

    .line 269
    .local v3, startIndex:I
    int-to-long v4, v3

    invoke-virtual {v0}, Lcom/android/vending/model/CommentsResponse;->getNumTotalComments()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 270
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4, v8}, Lcom/android/vending/CommentsActivity;->access$1302(Lcom/android/vending/CommentsActivity;Z)Z

    .line 278
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v4}, Lcom/android/vending/CommentsActivity;->access$1100(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/CommentsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/CommentsAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_4

    .line 279
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v4}, Lcom/android/vending/CommentsActivity;->showNoCommentsHeader()V

    .line 283
    :goto_2
    return-void

    .line 271
    :cond_3
    if-nez v2, :cond_2

    .line 275
    invoke-virtual {p0}, Lcom/android/vending/CommentsActivity$CommentsAction;->loadMore()V

    goto :goto_1

    .line 281
    :cond_4
    iget-object v4, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v4}, Lcom/android/vending/CommentsActivity;->hideNoCommentsHeader()V

    goto :goto_2
.end method

.method protected displayWaitingUi()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$500(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/model/Asset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$1500(Lcom/android/vending/CommentsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$1400(Lcom/android/vending/CommentsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v0}, Lcom/android/vending/CommentsActivity;->showLoadingFooter()V

    goto :goto_0
.end method

.method protected hideErrorUi()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Lcom/android/vending/BaseActivity$BaseAction;->hideErrorUi()V

    .line 308
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v0}, Lcom/android/vending/CommentsActivity;->hideFooter()V

    .line 309
    return-void
.end method

.method protected hideWaitingUi()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$1500(Lcom/android/vending/CommentsActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$1400(Lcom/android/vending/CommentsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v0}, Lcom/android/vending/CommentsActivity;->access$1400(Lcom/android/vending/CommentsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 316
    iget-object v0, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-virtual {v0}, Lcom/android/vending/CommentsActivity;->hideFooter()V

    .line 317
    return-void
.end method

.method protected loadMore()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/vending/CommentsActivity$CommentsAction;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/vending/CommentsActivity$CommentsAction;->start()V

    .line 323
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v1}, Lcom/android/vending/CommentsActivity;->access$500(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/model/Asset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v1}, Lcom/android/vending/CommentsActivity;->access$700(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/BaseActivity$SnippetInitializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v2}, Lcom/android/vending/CommentsActivity;->access$600(Lcom/android/vending/CommentsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/BaseActivity$SnippetInitializer;->sendRequest(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v1}, Lcom/android/vending/CommentsActivity;->access$600(Lcom/android/vending/CommentsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v2}, Lcom/android/vending/CommentsActivity;->access$800(Lcom/android/vending/CommentsActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v3}, Lcom/android/vending/CommentsActivity;->access$900(Lcom/android/vending/CommentsActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/vending/util/CommentUtil;->createCommentsRequest(Ljava/lang/String;ILjava/lang/String;)Lcom/android/vending/model/CommentsRequest;

    move-result-object v0

    .line 246
    .local v0, commentReq:Lcom/android/vending/model/CommentsRequest;
    iget-object v1, p0, Lcom/android/vending/CommentsActivity$CommentsAction;->this$0:Lcom/android/vending/CommentsActivity;

    invoke-static {v1}, Lcom/android/vending/CommentsActivity;->access$1000(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/api/CommentsService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/vending/api/CommentsService;->queueCommentsRequest(Lcom/android/vending/model/CommentsRequest;)V

    .line 247
    return-void
.end method
