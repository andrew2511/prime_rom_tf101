.class Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;
.super Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;
.source "CategoriesWithAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/CategoriesWithAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetSubCategoriesAction"
.end annotation


# instance fields
.field private mCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

.field private final mCategoryService:Lcom/android/vending/api/GetCategoriesService;

.field final synthetic this$0:Lcom/android/vending/CategoriesWithAppsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/CategoriesWithAppsListActivity;Lcom/android/vending/BaseActivity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->this$0:Lcom/android/vending/CategoriesWithAppsListActivity;

    .line 117
    invoke-direct {p0, p2}, Lcom/android/vending/BaseActivity$CacheCheckingBaseAction;-><init>(Lcom/android/vending/BaseActivity;)V

    .line 118
    new-instance v0, Lcom/android/vending/api/GetCategoriesService;

    iget-object v1, p1, Lcom/android/vending/CategoriesWithAppsListActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/GetCategoriesService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    .line 119
    return-void
.end method

.method private initCategoryList(Lcom/android/vending/model/GetCategoriesResponse$Category;)V
    .locals 3
    .parameter "category"

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getSubCategories()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, subCategories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    new-instance v0, Lcom/android/vending/CategoriesWithAppsAdapter;

    iget-object v2, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-direct {v0, v2, v1}, Lcom/android/vending/CategoriesWithAppsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 161
    .local v0, adapter:Lcom/android/vending/CategoriesWithAppsAdapter;
    iget-object v2, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->this$0:Lcom/android/vending/CategoriesWithAppsListActivity;

    invoke-static {v2}, Lcom/android/vending/CategoriesWithAppsListActivity;->access$000(Lcom/android/vending/CategoriesWithAppsListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v2, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->this$0:Lcom/android/vending/CategoriesWithAppsListActivity;

    invoke-static {v2}, Lcom/android/vending/CategoriesWithAppsListActivity;->access$100(Lcom/android/vending/CategoriesWithAppsListActivity;)V

    .line 164
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 6

    .prologue
    .line 133
    iget-object v4, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v4}, Lcom/android/vending/api/GetCategoriesService;->getResponse()Lcom/android/vending/model/GetCategoriesResponse;

    move-result-object v3

    .line 134
    .local v3, response:Lcom/android/vending/model/GetCategoriesResponse;
    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {v3}, Lcom/android/vending/model/GetCategoriesResponse;->getTopLevelCategories()Ljava/util/List;

    move-result-object v1

    .line 136
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

    .line 137
    .local v0, cat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getAssetType()I

    move-result v4

    iget-object v5, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->this$0:Lcom/android/vending/CategoriesWithAppsListActivity;

    iget-object v5, v5, Lcom/android/vending/CategoriesWithAppsListActivity;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 138
    invoke-direct {p0, v0}, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->initCategoryList(Lcom/android/vending/model/GetCategoriesResponse$Category;)V

    .line 139
    iput-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 144
    .end local v0           #cat:Lcom/android/vending/model/GetCategoriesResponse$Category;
    .end local v1           #categories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/android/vending/GetPromotedBitmapsAction;

    iget-object v2, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->this$0:Lcom/android/vending/CategoriesWithAppsListActivity;

    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->this$0:Lcom/android/vending/CategoriesWithAppsListActivity;

    const v3, 0x7f08003d

    invoke-virtual {v0, v3}, Lcom/android/vending/CategoriesWithAppsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/vending/velvet/CarouselView;

    iget-object v3, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    invoke-virtual {v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsNew()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/vending/GetPromotedBitmapsAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public isLoadedFromCache()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vending/CategoriesWithAppsListActivity$GetSubCategoriesAction;->mCategoryService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->queueRequest()V

    .line 124
    return-void
.end method
