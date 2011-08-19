.class public Lcom/android/vending/AssetBrowserActivity;
.super Lcom/android/vending/AssetListActivity;
.source "AssetBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetBrowserActivity$NetworkDataLoadAction;,
        Lcom/android/vending/AssetBrowserActivity$LoadFeaturedAssetsAction;,
        Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;
    }
.end annotation


# instance fields
.field private mAppsButton:Landroid/widget/Button;

.field private mCarrierButton:Landroid/widget/Button;

.field private mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

.field private mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

.field private mCategories:Lcom/android/vending/model/GetCategoriesResponse;

.field private mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

.field private mDoneDisplay:Z

.field private mDownloadsButton:Landroid/widget/Button;

.field private volatile mFeaturedAppsInitialized:Z

.field private mGamesButton:Landroid/widget/Button;

.field private mHasMoreAssets:Z

.field private mHeader:Ljava/lang/String;

.field private mHeaderView:Landroid/view/View;

.field private mListType:Ljava/lang/Integer;

.field private mNumAssetsBeforeRequest:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vending/AssetListActivity;-><init>()V

    .line 383
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/api/GetCategoriesService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/api/GetCarrierInfoService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/vending/AssetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity;->startCarouselLoading()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/vending/AssetBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/AssetBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/vending/AssetBrowserActivity;->mHasMoreAssets:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/vending/AssetBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/vending/AssetBrowserActivity;->mHasMoreAssets:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/vending/AssetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity;->tryInitialize()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/AssetBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/vending/AssetBrowserActivity;->mFeaturedAppsInitialized:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/vending/AssetBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/vending/AssetBrowserActivity;->mFeaturedAppsInitialized:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/vending/AssetBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/vending/AssetBrowserActivity;->tryDisplayUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/model/GetCategoriesResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/model/GetCategoriesResponse;)Lcom/android/vending/model/GetCategoriesResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/vending/AssetBrowserActivity;)Lcom/android/vending/model/GetCarrierInfoResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/model/GetCarrierInfoResponse;)Lcom/android/vending/model/GetCarrierInfoResponse;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/vending/AssetBrowserActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/vending/AssetBrowserActivity;->mNumAssetsBeforeRequest:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/vending/AssetBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/vending/AssetBrowserActivity;->mNumAssetsBeforeRequest:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/vending/AssetBrowserActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/android/vending/AssetBrowserActivity;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/vending/AssetBrowserActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/vending/AssetBrowserActivity;->mStartTime:J

    return-wide p1
.end method

.method private handleAssetListClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 204
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {v0, p0, p3}, Lcom/android/vending/model/Asset;->getViewInfoIntent(Lcom/android/vending/BaseActivity;I)Landroid/content/Intent;

    move-result-object v1

    .line 208
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startCarouselLoading()V
    .locals 6

    .prologue
    .line 414
    const v5, 0x7f08003d

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/vending/velvet/CarouselView;

    .line 416
    .local v1, carouselView:Lcom/android/vending/velvet/CarouselView;
    new-instance v5, Lcom/android/vending/AssetBrowserActivity$1;

    invoke-direct {v5, p0, v1}, Lcom/android/vending/AssetBrowserActivity$1;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/velvet/CarouselView;)V

    invoke-virtual {v1, v5}, Lcom/android/vending/velvet/CarouselView;->post(Ljava/lang/Runnable;)Z

    .line 423
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 424
    .local v3, promotedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCategoriesResponse;->getTopLevelCategories()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 425
    .local v4, topLevelCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;
    invoke-virtual {v4}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsNew()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 427
    .end local v4           #topLevelCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;
    :cond_0
    new-instance v0, Lcom/android/vending/GetPromotedBitmapsAction;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v3, v5}, Lcom/android/vending/GetPromotedBitmapsAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/velvet/CarouselView;Ljava/util/List;I)V

    .line 429
    .local v0, carouselAction:Lcom/android/vending/GetPromotedBitmapsAction;
    invoke-virtual {v0}, Lcom/android/vending/GetPromotedBitmapsAction;->start()V

    .line 430
    return-void
.end method

.method private tryDisplayUI()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 447
    iget-boolean v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDoneDisplay:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    if-nez v5, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierTitle()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, carrierTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCarrierInfoResponse;->isCarrierChannelEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_4

    .line 453
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierLogoIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 457
    .local v1, carrierLogo:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v5

    .line 460
    .local v0, carrierDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 462
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v9, v0, v9, v9}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 464
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 465
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 471
    .end local v0           #carrierDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #carrierLogo:Landroid/graphics/Bitmap;
    :goto_2
    const v5, 0x7f08003c

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 472
    .local v4, mainContentView:Landroid/view/View;
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 473
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 474
    const v5, 0x7f0800df

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mHeader:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 478
    const v5, 0x7f0800cb

    invoke-virtual {p0, v5}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 479
    .local v3, headerView:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mHeader:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    .end local v3           #headerView:Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDoneDisplay:Z

    goto :goto_0

    .line 457
    .end local v4           #mainContentView:Landroid/view/View;
    .restart local v1       #carrierLogo:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02003c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 467
    .end local v1           #carrierLogo:Landroid/graphics/Bitmap;
    :cond_4
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    iget-object v5, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method private tryInitialize()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCategoriesService;->getResponse()Lcom/android/vending/model/GetCategoriesResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCategories:Lcom/android/vending/model/GetCategoriesResponse;

    .line 438
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->getResponse()Lcom/android/vending/model/GetCarrierInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfo:Lcom/android/vending/model/GetCarrierInfoResponse;

    .line 439
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v0}, Lcom/android/vending/api/AssetService;->getHeader()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mHeader:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    invoke-virtual {v0}, Lcom/android/vending/api/AssetService;->getListType()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mListType:Ljava/lang/Integer;

    .line 441
    return-void
.end method


# virtual methods
.method protected createPaginationAwareAction()Lcom/android/vending/AssetListActivity$PaginationAwareAction;
    .locals 1

    .prologue
    .line 528
    new-instance v0, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/AssetBrowserActivity;)V

    return-object v0
.end method

.method public getAssetRequest()Lcom/android/vending/model/AssetRequest;
    .locals 3

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/vending/AssetBrowserActivity;->mNumAssetsBeforeRequest:I

    .line 517
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 518
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    sget-object v1, Lcom/android/vending/model/AssetRequest$SortOrderType;->FEATURED:Lcom/android/vending/model/AssetRequest$SortOrderType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setSortOrder(Lcom/android/vending/model/AssetRequest$SortOrderType;)V

    .line 519
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setStartIndex(J)V

    .line 520
    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/AssetRequest;->setNumEntries(J)V

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 523
    return-object v0
.end method

.method public getReferrerUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "rowIndex"

    .prologue
    const/4 v3, 0x0

    .line 191
    const-string v1, "home"

    const/4 v2, 0x2

    sub-int v2, p1, v2

    invoke-static {v1, v3, v3, v2}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 193
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/android/vending/AssetBrowserActivity;->mListType:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 194
    const-string v1, "listtype"

    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mListType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected isAlwaysShowListHeaders()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mAppsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    const-class v1, Lcom/android/vending/CategoriesWithAppsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    const-string v1, "vnd.android.cursor.dir/vending_applications"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mGamesButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    const-class v1, Lcom/android/vending/CategoriesWithAppsListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const-string v1, "vnd.android.cursor.dir/vending_games"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const-class v1, Lcom/android/vending/CarrierChannelActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    :cond_3
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/vending/AssetBrowserActivity;->mStartTime:J

    .line 101
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v2, 0x7f0701ad

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/android/vending/AssetBrowserActivity;->setupSlimTitleBar(Ljava/lang/CharSequence;Z)V

    .line 107
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 109
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04003a

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 110
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    const v2, 0x7f08003c

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, carousel:Landroid/view/View;
    instance-of v2, v0, Lcom/android/vending/velvet/OverlappingLayout;

    if-eqz v2, :cond_0

    .line 114
    check-cast v0, Lcom/android/vending/velvet/OverlappingLayout;

    .end local v0           #carousel:Landroid/view/View;
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/vending/velvet/OverlappingLayout;->setCarouselPadder(Landroid/view/View;)V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    const v2, 0x7f080088

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mAppsButton:Landroid/widget/Button;

    .line 120
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mAppsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f080089

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mGamesButton:Landroid/widget/Button;

    .line 123
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mGamesButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v2, 0x7f08008a

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    .line 126
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v2, 0x7f08008b

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    .line 129
    iget-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mDownloadsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/vending/AssetBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 134
    new-instance v2, Lcom/android/vending/api/GetCarrierInfoService;

    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v2, v3}, Lcom/android/vending/api/GetCarrierInfoService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    .line 135
    new-instance v2, Lcom/android/vending/api/GetCategoriesService;

    iget-object v3, p0, Lcom/android/vending/AssetBrowserActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v2, v3}, Lcom/android/vending/api/GetCategoriesService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v2, p0, Lcom/android/vending/AssetBrowserActivity;->mCategoriesService:Lcom/android/vending/api/GetCategoriesService;

    .line 137
    invoke-super {p0}, Lcom/android/vending/AssetListActivity;->finishSetup()V

    .line 139
    iput-boolean v4, p0, Lcom/android/vending/AssetBrowserActivity;->mHasMoreAssets:Z

    .line 140
    new-instance v2, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;

    invoke-direct {v2, p0, p0}, Lcom/android/vending/AssetBrowserActivity$LocalDataLoadAction;-><init>(Lcom/android/vending/AssetBrowserActivity;Lcom/android/vending/AssetBrowserActivity;)V

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 141
    if-nez p1, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/AssetBrowserActivity;->startSetupActionChain(Z)V

    .line 142
    return-void

    :cond_1
    move v2, v5

    .line 141
    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p5}, Lcom/android/vending/AssetBrowserActivity;->handleAssetListClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 186
    return-void
.end method

.method public onLookupAssetsComplete()V
    .locals 0

    .prologue
    .line 509
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/android/vending/AssetListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetBrowserActivity;->setIntent(Landroid/content/Intent;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/vending/AssetBrowserActivity;->maybeDisplayMessage(Landroid/content/Intent;)V

    .line 155
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetBrowserActivity;->setContentView(I)V

    .line 147
    return-void
.end method
