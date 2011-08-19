.class Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;
.super Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;
.source "FilteredAppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/FilteredAppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitialLoadAction"
.end annotation


# instance fields
.field private mCategoryService:Lcom/android/vending/api/GetCategoriesService;

.field final synthetic this$0:Lcom/android/vending/FilteredAppListActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/FilteredAppListActivity;Lcom/android/vending/BaseActivity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    .line 308
    invoke-direct {p0, p2}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 309
    new-instance v0, Lcom/android/vending/api/GetCategoriesService;

    iget-object v1, p1, Lcom/android/vending/FilteredAppListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/GetCategoriesService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    .line 310
    return-void
.end method

.method private getFilteredPromotedAssets(Lcom/android/vending/model/GetCategoriesResponse$Category;)Ljava/util/List;
    .locals 4
    .parameter "subCat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    sget-object v2, Lcom/android/vending/FilteredAppListActivity$1;->$SwitchMap$com$android$vending$model$AssetRequest$ViewFilterType:[I

    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v3}, Lcom/android/vending/FilteredAppListActivity;->access$900(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/model/AssetRequest$ViewFilterType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/model/AssetRequest$ViewFilterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 420
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsNew()Ljava/util/List;

    move-result-object v0

    .line 421
    .local v0, promoNew:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 428
    .end local v0           #promoNew:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 416
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsFree()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 418
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsPaid()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 425
    .restart local v0       #promoNew:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsPaid()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 427
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsFree()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v2, v1

    .line 428
    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadPromosForSubCategory(Lcom/android/vending/model/GetCategoriesResponse$Category;Ljava/lang/String;)V
    .locals 11
    .parameter "topLevel"
    .parameter "subCategoryName"

    .prologue
    const v8, 0x7f08003c

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 361
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getSubCategories()Ljava/util/List;

    move-result-object v4

    .line 362
    .local v4, subCategories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v5, v6}, Lcom/android/vending/FilteredAppListActivity;->access$002(Lcom/android/vending/FilteredAppListActivity;Ljava/util/List;)Ljava/util/List;

    .line 363
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 366
    .local v3, subCat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    if-nez p2, :cond_4

    .line 367
    invoke-virtual {v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 368
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-direct {p0, v3}, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->getFilteredPromotedAssets(Lcom/android/vending/model/GetCategoriesResponse$Category;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/vending/FilteredAppListActivity;->access$002(Lcom/android/vending/FilteredAppListActivity;Ljava/util/List;)Ljava/util/List;

    .line 377
    .end local v3           #subCat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v5}, Lcom/android/vending/FilteredAppListActivity;->access$000(Lcom/android/vending/FilteredAppListActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 378
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v5, v5, Lcom/android/vending/FilteredAppListActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v6}, Lcom/android/vending/FilteredAppListActivity;->access$300(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAppViewSwitcher;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 379
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v5, v7}, Lcom/android/vending/FilteredAppListActivity;->access$402(Lcom/android/vending/FilteredAppListActivity;Z)Z

    .line 381
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v5}, Lcom/android/vending/FilteredAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 382
    .local v1, carousel:Landroid/view/View;
    instance-of v5, v1, Lcom/android/vending/velvet/OverlappingLayout;

    if-eqz v5, :cond_2

    .line 383
    move-object v0, v1

    check-cast v0, Lcom/android/vending/velvet/OverlappingLayout;

    move-object v5, v0

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v6}, Lcom/android/vending/FilteredAppListActivity;->access$500(Lcom/android/vending/FilteredAppListActivity;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    .line 386
    :cond_2
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v5}, Lcom/android/vending/FilteredAppListActivity;->access$600(Lcom/android/vending/FilteredAppListActivity;)V

    .line 411
    .end local p0
    :cond_3
    :goto_1
    return-void

    .line 371
    .end local v1           #carousel:Landroid/view/View;
    .restart local v3       #subCat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    .restart local p0
    :cond_4
    invoke-virtual {v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getCategoryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-direct {p0, v3}, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->getFilteredPromotedAssets(Lcom/android/vending/model/GetCategoriesResponse$Category;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/vending/FilteredAppListActivity;->access$002(Lcom/android/vending/FilteredAppListActivity;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 392
    .end local v3           #subCat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    :cond_5
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v5}, Lcom/android/vending/FilteredAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .restart local v1       #carousel:Landroid/view/View;
    instance-of v5, v1, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    if-eqz v5, :cond_6

    .line 394
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v5, v5, Lcom/android/vending/FilteredAppListActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v6}, Lcom/android/vending/FilteredAppListActivity;->access$300(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAppViewSwitcher;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 395
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v5, v7}, Lcom/android/vending/FilteredAppListActivity;->access$402(Lcom/android/vending/FilteredAppListActivity;Z)Z

    goto :goto_1

    .line 397
    :cond_6
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    new-instance v6, Lcom/android/vending/PromotedAssetSwitcherAdapter;

    iget-object v7, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v7}, Lcom/android/vending/FilteredAppListActivity;->access$000(Lcom/android/vending/FilteredAppListActivity;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v9, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v9, v9, Lcom/android/vending/FilteredAppListActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/vending/PromotedAssetSwitcherAdapter;-><init>(Ljava/util/List;Lcom/android/vending/PromotedAssetSwitcherAdapter$InitialLoadListener;Landroid/os/Handler;)V

    invoke-static {v5, v6}, Lcom/android/vending/FilteredAppListActivity;->access$702(Lcom/android/vending/FilteredAppListActivity;Lcom/android/vending/PromotedAssetSwitcherAdapter;)Lcom/android/vending/PromotedAssetSwitcherAdapter;

    .line 399
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v5}, Lcom/android/vending/FilteredAppListActivity;->access$300(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAppViewSwitcher;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v6}, Lcom/android/vending/FilteredAppListActivity;->access$700(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAssetSwitcherAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/vending/PromotedAppViewSwitcher;->setAdapter(Lcom/android/vending/PromotedAssetSwitcherAdapter;)V

    .line 407
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v5}, Lcom/android/vending/FilteredAppListActivity;->access$700(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/PromotedAssetSwitcherAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v6, v6, Lcom/android/vending/FilteredAppListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-virtual {v5, v10, v6}, Lcom/android/vending/PromotedAssetSwitcherAdapter;->attemptToPreloadFromCache(ILcom/android/vending/api/RequestManager;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 408
    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v6}, Lcom/android/vending/FilteredAppListActivity;->access$000(Lcom/android/vending/FilteredAppListActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v5, p0}, Lcom/android/vending/FilteredAppListActivity;->access$802(Lcom/android/vending/FilteredAppListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method protected displayResults()V
    .locals 6

    .prologue
    .line 348
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v4}, Lcom/android/vending/api/GetCategoriesService;->getResponse()Lcom/android/vending/model/GetCategoriesResponse;

    move-result-object v3

    .line 349
    .local v3, response:Lcom/android/vending/model/GetCategoriesResponse;
    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {v3}, Lcom/android/vending/model/GetCategoriesResponse;->getTopLevelCategories()Ljava/util/List;

    move-result-object v1

    .line 351
    .local v1, categories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 352
    .local v0, cat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getAssetType()I

    move-result v4

    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v5, v5, Lcom/android/vending/FilteredAppListActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 353
    iget-object v4, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v4}, Lcom/android/vending/FilteredAppListActivity;->access$200(Lcom/android/vending/FilteredAppListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->loadPromosForSubCategory(Lcom/android/vending/model/GetCategoriesResponse$Category;Ljava/lang/String;)V

    .line 358
    .end local v0           #cat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    .end local v1           #categories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 8

    .prologue
    .line 330
    iget-object v2, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v2}, Lcom/android/vending/FilteredAppListActivity;->getLookupAssetsActionToRestart()Lcom/android/vending/BaseActivity$BaseAction;

    move-result-object v0

    .line 334
    .local v0, assetLookupAction:Lcom/android/vending/BaseActivity$BaseAction;
    iget-object v2, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v2}, Lcom/android/vending/FilteredAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 335
    .local v1, carousel:Landroid/view/View;
    instance-of v2, v1, Lcom/android/vending/velvet/LandscapeOverlappingLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v2}, Lcom/android/vending/FilteredAppListActivity;->access$000(Lcom/android/vending/FilteredAppListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 336
    iget-object v3, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    new-instance v4, Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v5, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    iget-object v2, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-virtual {v2}, Lcom/android/vending/FilteredAppListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    move-result-object v2

    const v6, 0x7f08003d

    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/vending/velvet/CarouselView;

    iget-object v6, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v6}, Lcom/android/vending/FilteredAppListActivity;->access$000(Lcom/android/vending/FilteredAppListActivity;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v2, v6, v7}, Lcom/android/vending/GetPromotedBitmapsAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;I)V

    invoke-static {v3, v4}, Lcom/android/vending/FilteredAppListActivity;->access$102(Lcom/android/vending/FilteredAppListActivity;Lcom/android/vending/GetPromotedBitmapsAction;)Lcom/android/vending/GetPromotedBitmapsAction;

    .line 339
    iget-object v2, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v2}, Lcom/android/vending/FilteredAppListActivity;->access$100(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/GetPromotedBitmapsAction;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/vending/GetPromotedBitmapsAction;->setDefaultSubAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 340
    iget-object v2, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->this$0:Lcom/android/vending/FilteredAppListActivity;

    invoke-static {v2}, Lcom/android/vending/FilteredAppListActivity;->access$100(Lcom/android/vending/FilteredAppListActivity;)Lcom/android/vending/GetPromotedBitmapsAction;

    move-result-object v2

    .line 343
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public isLoadedFromCache()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/vending/FilteredAppListActivity$InitialLoadAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->queueRequest()V

    .line 315
    return-void
.end method
