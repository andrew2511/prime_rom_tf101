.class public Lcom/android/vending/UninstallActivity;
.super Lcom/android/vending/BaseActivity;
.source "UninstallActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/UninstallActivity$4;,
        Lcom/android/vending/UninstallActivity$ReportApplicationRequest;,
        Lcom/android/vending/UninstallActivity$AsynchUninstallReasonRequest;,
        Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;,
        Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;,
        Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;,
        Lcom/android/vending/UninstallActivity$UninstallState;
    }
.end annotation


# instance fields
.field protected mActualAssetId:Ljava/lang/String;

.field private mAsset:Lcom/android/vending/model/Asset;

.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mAssetService:Lcom/android/vending/api/AssetService;

.field private mButtons:Landroid/view/View;

.field private mLeftButton:Landroid/widget/Button;

.field private mRefundFailedAccessor:Lcom/android/vending/controller/DialogAccessor;

.field private mReportAppDialog:Lcom/android/vending/controller/DialogAccessor;

.field protected mServerAssetId:Ljava/lang/String;

.field private mSnippetView:Landroid/view/View;

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mUninstallProgressLayout:Landroid/widget/FrameLayout;

.field private mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

.field private mUninstallStatusLayout:Landroid/widget/FrameLayout;

.field private mUninstallSucceeded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->updateLocalStateDependentUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/UninstallActivity;)Lcom/android/vending/controller/DialogAccessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mReportAppDialog:Lcom/android/vending/controller/DialogAccessor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/UninstallActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->performUninstall()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/vending/UninstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupView()V

    return-void
.end method

.method private performRefund()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method private performUninstall()V
    .locals 2

    .prologue
    .line 238
    const v1, 0x7f080122

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    .local v0, text:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1, p0}, Lcom/android/vending/model/Asset;->isUpdatedSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/vending/model/Asset;->uninstallById(Ljava/lang/String;)V

    .line 247
    return-void

    .line 242
    :cond_0
    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private setupUninstallProgressView()V
    .locals 3

    .prologue
    .line 221
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 222
    .local v0, progressBar:Landroid/widget/ProgressBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 224
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->performRefund()V

    .line 230
    :goto_0
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallProgressLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->performUninstall()V

    goto :goto_0
.end method

.method private setupUninstallStatusView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 250
    const v2, 0x7f080124

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 251
    .local v1, uninstallFailed:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    const v3, 0x7f07002b

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 254
    const v2, 0x7f080125

    invoke-virtual {p0, v2}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 257
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/vending/UninstallActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/android/vending/UninstallActivity$2;-><init>(Lcom/android/vending/UninstallActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    new-instance v2, Lcom/android/vending/UninstallActivity$3;

    invoke-direct {v2, p0}, Lcom/android/vending/UninstallActivity$3;-><init>(Lcom/android/vending/UninstallActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 282
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mButtons:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 285
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 286
    return-void

    .end local v0           #radioGroup:Landroid/widget/RadioGroup;
    :cond_0
    move v2, v5

    .line 251
    goto :goto_0

    .restart local v0       #radioGroup:Landroid/widget/RadioGroup;
    :cond_1
    move v3, v5

    .line 273
    goto :goto_1
.end method

.method private setupView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 195
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 196
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v0

    const-string v1, "asset"

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->updateSnippet()V

    .line 202
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mButtons:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mUninstallProgressLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/vending/UninstallActivity;->mUninstallStatusLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    sget-object v0, Lcom/android/vending/UninstallActivity$4;->$SwitchMap$com$android$vending$UninstallActivity$UninstallState:[I

    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    invoke-virtual {v1}, Lcom/android/vending/UninstallActivity$UninstallState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 210
    :pswitch_0
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupUninstallProgressView()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupUninstallStatusView()V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLocalStateDependentUi()V
    .locals 3

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v2, :cond_0

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 181
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-object v1, v2

    .line 182
    .local v1, newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :goto_1
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v1, v2, :cond_4

    .line 183
    :cond_1
    sget-object v2, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_STATUS:Lcom/android/vending/UninstallActivity$UninstallState;

    iput-object v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 184
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v1, v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    .line 185
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->setupView()V

    goto :goto_0

    .line 181
    .end local v1           #newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    move-object v1, v2

    goto :goto_1

    .line 184
    .restart local v1       #newState:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 187
    :cond_4
    invoke-direct {p0}, Lcom/android/vending/UninstallActivity;->updateSnippet()V

    goto :goto_0
.end method

.method private updateSnippet()V
    .locals 5

    .prologue
    .line 289
    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 290
    .local v0, appInfoView:Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    .line 291
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mThumbnailView:Landroid/widget/ImageView;

    .line 292
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 293
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mSnippetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 294
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0, v5}, Lcom/android/vending/UninstallActivity;->requestWindowFeature(I)Z

    .line 109
    new-instance v1, Lcom/android/vending/api/AssetService;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 111
    new-instance v1, Lcom/android/vending/AssetItemAdapter;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 112
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 113
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v2, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 114
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v2, Lcom/android/vending/UninstallActivity$1;

    invoke-direct {v2, p0}, Lcom/android/vending/UninstallActivity$1;-><init>(Lcom/android/vending/UninstallActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 124
    const v1, 0x7f04005e

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->setContentView(I)V

    .line 126
    sget-object v1, Lcom/android/vending/UninstallActivity$UninstallState;->UNINSTALL_PROGRESS:Lcom/android/vending/UninstallActivity$UninstallState;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 127
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "assetidserver"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mServerAssetId:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "assetid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    .line 130
    if-eqz p1, :cond_1

    .line 131
    const-string v1, "uninstall_state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, stateStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lcom/android/vending/UninstallActivity$UninstallState;->valueOf(Ljava/lang/String;)Lcom/android/vending/UninstallActivity$UninstallState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    .line 135
    :cond_0
    const-string v1, "uninstall_result"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    .line 138
    .end local v0           #stateStr:Ljava/lang/String;
    :cond_1
    const v1, 0x7f080121

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallProgressLayout:Landroid/widget/FrameLayout;

    .line 139
    const v1, 0x7f080123

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallStatusLayout:Landroid/widget/FrameLayout;

    .line 141
    const v1, 0x7f08012b

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mLeftButton:Landroid/widget/Button;

    .line 142
    const v1, 0x7f0800b6

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mButtons:Landroid/view/View;

    .line 144
    new-instance v1, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;

    invoke-direct {v1, p0, v6}, Lcom/android/vending/UninstallActivity$RefundFailedDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mRefundFailedAccessor:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 145
    new-instance v1, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;

    invoke-direct {v1, p0, v6}, Lcom/android/vending/UninstallActivity$ReportAppDialogAccessor;-><init>(Lcom/android/vending/UninstallActivity;Lcom/android/vending/UninstallActivity$1;)V

    iput-object v1, p0, Lcom/android/vending/UninstallActivity;->mReportAppDialog:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 147
    new-instance v1, Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;

    iget-object v2, p0, Lcom/android/vending/UninstallActivity;->mServerAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/vending/UninstallActivity$UninstallApplicationLoader;-><init>(Lcom/android/vending/UninstallActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;)V

    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 148
    if-nez p1, :cond_2

    move v1, v5

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/vending/UninstallActivity;->startSetupActionChain(Z)V

    .line 149
    return-void

    :cond_2
    move v1, v4

    .line 148
    goto :goto_0
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 159
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 162
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 165
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 153
    const-string v0, "uninstall_state"

    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallState:Lcom/android/vending/UninstallActivity$UninstallState;

    invoke-virtual {v1}, Lcom/android/vending/UninstallActivity$UninstallState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "uninstall_result"

    iget-boolean v1, p0, Lcom/android/vending/UninstallActivity;->mUninstallSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 3
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/vending/UninstallActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 170
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mActualAssetId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/vending/UninstallActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method
