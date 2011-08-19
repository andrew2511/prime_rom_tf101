.class public Lcom/android/vending/CommentsActivity;
.super Lcom/android/vending/BaseActivity;
.source "CommentsActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/CommentsActivity$CommentsAction;
    }
.end annotation


# instance fields
.field private mAsset:Lcom/android/vending/model/Asset;

.field private mAssetId:Ljava/lang/String;

.field private mAssetItemAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

.field private mCommentsAction:Lcom/android/vending/CommentsActivity$CommentsAction;

.field private mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

.field private mCommentsService:Lcom/android/vending/api/CommentsService;

.field private mContentView:Landroid/view/View;

.field private mDisplayingFooterView:Z

.field protected mErrorFooter:Landroid/view/View;

.field private mErrorFooterClickListener:Landroid/view/View$OnClickListener;

.field private mFooterView:Landroid/view/View;

.field private mFullscreenIndicator:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field protected mLoadingFooter:Landroid/view/View;

.field private mNoComments:Landroid/widget/TextView;

.field private mNoMoreComments:Z

.field private mPageNum:I

.field private mRatingCreatorId:Ljava/lang/String;

.field private mRatingDialogShowing:Z

.field private mRatingSelectedPosition:I

.field private mReferrerUri:Ljava/lang/String;

.field private mSnippetInit:Lcom/android/vending/BaseActivity$SnippetInitializer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 90
    iput v1, p0, Lcom/android/vending/CommentsActivity;->mPageNum:I

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/vending/CommentsActivity;->mRatingSelectedPosition:I

    .line 114
    iput-boolean v1, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    .line 122
    new-instance v0, Lcom/android/vending/CommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/vending/CommentsActivity$1;-><init>(Lcom/android/vending/CommentsActivity;)V

    iput-object v0, p0, Lcom/android/vending/CommentsActivity;->mErrorFooterClickListener:Landroid/view/View$OnClickListener;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CommentsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/vending/CommentsActivity;->displayMarkCommentDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/CommentsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/vending/CommentsActivity;->doHandleMarkedAsSpam(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/api/CommentsService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsService:Lcom/android/vending/api/CommentsService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/CommentsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/AssetItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mAssetItemAdapter:Lcom/android/vending/AssetItemAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/vending/CommentsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/vending/CommentsActivity;->mNoMoreComments:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/vending/CommentsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/vending/CommentsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mFullscreenIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/CommentsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/vending/CommentsActivity;->mRatingSelectedPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/vending/CommentsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/vending/CommentsActivity;->mRatingSelectedPosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/vending/CommentsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/vending/CommentsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/vending/CommentsActivity;->mRatingCreatorId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/model/Asset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/vending/CommentsActivity;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/vending/CommentsActivity;->mAsset:Lcom/android/vending/model/Asset;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/vending/CommentsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/vending/CommentsActivity;)Lcom/android/vending/BaseActivity$SnippetInitializer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mSnippetInit:Lcom/android/vending/BaseActivity$SnippetInitializer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/vending/CommentsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/vending/CommentsActivity;->mPageNum:I

    return v0
.end method

.method static synthetic access$808(Lcom/android/vending/CommentsActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/vending/CommentsActivity;->mPageNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/vending/CommentsActivity;->mPageNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/vending/CommentsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mReferrerUri:Ljava/lang/String;

    return-object v0
.end method

.method private displayMarkCommentDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "creatorId"

    .prologue
    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    .line 439
    iput-object p1, p0, Lcom/android/vending/CommentsActivity;->mRatingCreatorId:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;->setCommentInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/CommentsActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 443
    return-void
.end method

.method private doHandleMarkedAsSpam(Ljava/lang/String;)V
    .locals 1
    .parameter "creatorId"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/CommentsAdapter;->removeComment(Ljava/lang/String;)V

    .line 221
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/vending/CommentsActivity;->setResult(I)V

    .line 222
    return-void
.end method

.method private needLoadMore(JJ)Z
    .locals 2
    .parameter "scrollPosition"
    .parameter "loadedCount"

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mNoMoreComments:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3

    add-long/2addr v0, p1

    cmp-long v0, v0, p3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerCommentRatingDialog()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    new-instance v1, Lcom/android/vending/CommentsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/vending/CommentsActivity$3;-><init>(Lcom/android/vending/CommentsActivity;)V

    new-instance v2, Lcom/android/vending/CommentsActivity$4;

    invoke-direct {v2, p0}, Lcom/android/vending/CommentsActivity$4;-><init>(Lcom/android/vending/CommentsActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/util/CommentUtil$OnMarkedAsSpamHandler;Lcom/android/vending/util/CommentUtil$LifecycleHandler;)V

    iput-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    .line 207
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentRatingDialog:Lcom/android/vending/util/CommentUtil$CommentRatingDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/CommentsActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected hideFooter()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 423
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mErrorFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mDisplayingFooterView:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mDisplayingFooterView:Z

    .line 429
    :cond_0
    return-void
.end method

.method protected hideNoCommentsHeader()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v0}, Lcom/android/vending/CommentsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 352
    const/4 v2, 0x0

    .line 361
    :goto_0
    return v2

    .line 343
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 355
    .local v0, commentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "creator_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, creatorId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/android/vending/util/CommentUtil;->sendCommentRating(Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/RateCommentRequest$CommentRating;)V

    .line 357
    sget-object v2, Lcom/android/vending/model/RateCommentRequest$CommentRating;->SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    if-ne v0, v2, :cond_0

    .line 358
    invoke-direct {p0, v1}, Lcom/android/vending/CommentsActivity;->doHandleMarkedAsSpam(Ljava/lang/String;)V

    .line 361
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 346
    .end local v0           #commentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;
    .end local v1           #creatorId:Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->NOT_HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 347
    .restart local v0       #commentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;
    goto :goto_1

    .line 349
    .end local v0           #commentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 350
    .restart local v0       #commentRating:Lcom/android/vending/model/RateCommentRequest$CommentRating;
    goto :goto_1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700c2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0, v8}, Lcom/android/vending/CommentsActivity;->requestWindowFeature(I)Z

    .line 134
    invoke-virtual {p0}, Lcom/android/vending/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "assetid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/vending/CommentsActivity;->finish()V

    .line 183
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "referrer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mReferrerUri:Ljava/lang/String;

    .line 142
    const v1, 0x7f040030

    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->setContentView(I)V

    .line 144
    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mContentView:Landroid/view/View;

    .line 145
    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mFullscreenIndicator:Landroid/view/View;

    .line 147
    new-instance v1, Lcom/android/vending/AssetItemAdapter;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mAssetItemAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 148
    new-instance v1, Lcom/android/vending/BaseActivity$SnippetInitializer;

    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mAssetItemAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v3, Lcom/android/vending/api/AssetService;

    iget-object v4, p0, Lcom/android/vending/CommentsActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/BaseActivity$SnippetInitializer;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/AssetItemAdapter;Lcom/android/vending/api/AssetService;)V

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mSnippetInit:Lcom/android/vending/BaseActivity$SnippetInitializer;

    .line 151
    new-instance v1, Lcom/android/vending/api/CommentsService;

    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v1, v2}, Lcom/android/vending/api/CommentsService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mCommentsService:Lcom/android/vending/api/CommentsService;

    .line 152
    new-instance v1, Lcom/android/vending/CommentsAdapter;

    new-instance v2, Lcom/android/vending/CommentsActivity$2;

    invoke-direct {v2, p0}, Lcom/android/vending/CommentsActivity$2;-><init>(Lcom/android/vending/CommentsActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/android/vending/CommentsAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    .line 158
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    .line 160
    const v1, 0x7f040016

    invoke-static {v1, p0, v6}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    .line 161
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 162
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mLoadingFooter:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    const v2, 0x7f080047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mErrorFooter:Landroid/view/View;

    .line 164
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mErrorFooter:Landroid/view/View;

    const v2, 0x7f080049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 165
    .local v0, retryButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mErrorFooterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f040013

    invoke-static {p0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    .line 168
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 169
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 174
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 175
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 177
    new-instance v1, Lcom/android/vending/CommentsActivity$CommentsAction;

    invoke-direct {v1, p0}, Lcom/android/vending/CommentsActivity$CommentsAction;-><init>(Lcom/android/vending/CommentsActivity;)V

    iput-object v1, p0, Lcom/android/vending/CommentsActivity;->mCommentsAction:Lcom/android/vending/CommentsActivity$CommentsAction;

    .line 179
    invoke-direct {p0}, Lcom/android/vending/CommentsActivity;->registerCommentRatingDialog()V

    .line 181
    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mCommentsAction:Lcom/android/vending/CommentsActivity$CommentsAction;

    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 182
    if-nez p1, :cond_1

    move v1, v8

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/vending/CommentsActivity;->startSetupActionChain(Z)V

    goto/16 :goto_0

    :cond_1
    move v1, v7

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v6, 0x7f0700c4

    const v3, 0x7f0700c3

    const v5, 0x7f0700c2

    const/4 v4, 0x0

    .line 370
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget-object v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    .local v0, creatorId:Ljava/lang/String;
    const v2, 0x7f0700c1

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 373
    invoke-interface {p1, v4, v3, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 374
    .local v1, item:Landroid/view/MenuItem;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "creator_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 375
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 376
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "creator_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 377
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 378
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "creator_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 379
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 475
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 477
    const-string v0, "dialogShowing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    const-string v0, "dialogShowing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    .line 480
    :cond_0
    iget-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    if-eqz v0, :cond_2

    .line 481
    const-string v0, "selectedRatingPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    const-string v0, "selectedRatingPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/vending/CommentsActivity;->mRatingSelectedPosition:I

    .line 484
    :cond_1
    const-string v0, "creatorId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/CommentsActivity;->mRatingCreatorId:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mRatingCreatorId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/vending/CommentsActivity;->displayMarkCommentDialog(Ljava/lang/String;)V

    .line 488
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 462
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 464
    const-string v0, "dialogShowing"

    iget-boolean v1, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    iget-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mRatingDialogShowing:Z

    if-eqz v0, :cond_1

    .line 466
    iget v0, p0, Lcom/android/vending/CommentsActivity;->mRatingSelectedPosition:I

    if-ltz v0, :cond_0

    .line 467
    const-string v0, "selectedRatingPosition"

    iget v1, p0, Lcom/android/vending/CommentsActivity;->mRatingSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 469
    :cond_0
    const-string v0, "creatorId"

    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mRatingCreatorId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 329
    add-int v0, p2, p3

    int-to-long v0, v0

    int-to-long v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/vending/CommentsActivity;->needLoadMore(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsAction:Lcom/android/vending/CommentsActivity$CommentsAction;

    invoke-virtual {v0}, Lcom/android/vending/CommentsActivity$CommentsAction;->loadMore()V

    .line 332
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 336
    return-void
.end method

.method protected showErrorFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mLoadingFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mErrorFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mDisplayingFooterView:Z

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mDisplayingFooterView:Z

    .line 420
    :cond_0
    return-void
.end method

.method protected showLoadingFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v0}, Lcom/android/vending/CommentsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mErrorFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mDisplayingFooterView:Z

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/vending/CommentsActivity;->mFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/CommentsActivity;->mDisplayingFooterView:Z

    goto :goto_0
.end method

.method protected showNoCommentsHeader()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mCommentsAdapter:Lcom/android/vending/CommentsAdapter;

    invoke-virtual {v0}, Lcom/android/vending/CommentsAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 388
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mNoComments:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/vending/CommentsActivity;->mAssetItemAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0, p1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method
