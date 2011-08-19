.class Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;
.super Lcom/android/vending/AssetListActivity$PaginationAwareAction;
.source "CarrierChannelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/CarrierChannelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCarrierBannerAction"
.end annotation


# instance fields
.field private mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

.field private mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

.field final synthetic this$0:Lcom/android/vending/CarrierChannelActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V
    .locals 2
    .parameter
    .parameter "activity"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetListActivity$PaginationAwareAction;-><init>(Lcom/android/vending/AssetListActivity;Lcom/android/vending/BaseActivity;)V

    .line 119
    new-instance v0, Lcom/android/vending/api/GetCarrierInfoService;

    iget-object v1, p1, Lcom/android/vending/CarrierChannelActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v0, v1}, Lcom/android/vending/api/GetCarrierInfoService;-><init>(Lcom/android/vending/api/RequestManager;)V

    iput-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->tryLoadFromCacheAndDisplay()V

    return-void
.end method

.method private isLoadedFromCache()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->hasResponse()Z

    move-result v0

    return v0
.end method

.method private tryLoadFromCacheAndDisplay()V
    .locals 3

    .prologue
    .line 128
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->setTriedLoadFromCache(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->prepare()V

    .line 130
    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mActionRequestManager:Lcom/android/vending/api/RequestManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/vending/api/RequestManager;->doRequestsFromCache(Z)Z

    .line 131
    invoke-direct {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->isLoadedFromCache()Z

    move-result v0

    .line 132
    .local v0, isLoadedFromCache:Z
    invoke-virtual {p0, v0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->setLoadedFromCache(Z)V

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->displayResults()V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method protected displayResults()V
    .locals 5

    .prologue
    .line 146
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v3}, Lcom/android/vending/api/GetCarrierInfoService;->getResponse()Lcom/android/vending/model/GetCarrierInfoResponse;

    move-result-object v1

    .line 147
    .local v1, carrierResponse:Lcom/android/vending/model/GetCarrierInfoResponse;
    invoke-virtual {v1}, Lcom/android/vending/model/GetCarrierInfoResponse;->getCarrierBanner()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    .local v0, carrierBannerBitmap:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    const v4, 0x7f080117

    invoke-virtual {v3, v4}, Lcom/android/vending/CarrierChannelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, titleArea:Landroid/view/View;
    iget-object v3, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    invoke-static {v3}, Lcom/android/vending/CarrierChannelActivity;->access$100(Lcom/android/vending/CarrierChannelActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    return-void
.end method

.method protected getSubAction()Lcom/android/vending/BaseActivity$BaseAction;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    iget-object v1, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->this$0:Lcom/android/vending/CarrierChannelActivity;

    iget-object v2, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mBaseActivity:Lcom/android/vending/BaseActivity;

    invoke-direct {v0, v1, v2}, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;-><init>(Lcom/android/vending/CarrierChannelActivity;Lcom/android/vending/BaseActivity;)V

    iput-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    .line 159
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    return-object v0
.end method

.method public loadMore()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mAppsAction:Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;

    invoke-virtual {v0}, Lcom/android/vending/CarrierChannelActivity$GetCarrierAppsAction;->loadMore()V

    .line 165
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/vending/CarrierChannelActivity$GetCarrierBannerAction;->mCarrierInfoService:Lcom/android/vending/api/GetCarrierInfoService;

    invoke-virtual {v0}, Lcom/android/vending/api/GetCarrierInfoService;->queueRequest()V

    .line 125
    return-void
.end method
