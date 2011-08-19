.class public Lcom/android/vending/FlagContentActivity;
.super Lcom/android/vending/BaseActivity;
.source "FlagContentActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/FlagContentActivity$FlagRequest;,
        Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;,
        Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;
    }
.end annotation


# instance fields
.field private mAsset:Lcom/android/vending/model/Asset;

.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mAssetId:Ljava/lang/String;

.field private mAssetService:Lcom/android/vending/api/AssetService;

.field private mExtendedMessageDialog:Lcom/android/vending/controller/DialogAccessor;

.field private mFlagMessage:Ljava/lang/String;

.field private mFlagRadioButtons:Landroid/widget/RadioGroup;

.field private mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/vending/FlagContentActivity;Lcom/android/vending/model/ModifyCommentRequest$FlagType;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/vending/FlagContentActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/vending/FlagContentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity;->mFlagMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/controller/DialogAccessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mExtendedMessageDialog:Lcom/android/vending/controller/DialogAccessor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/vending/FlagContentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/FlagContentActivity;->postFlag()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/vending/FlagContentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mAssetId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/AssetItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/api/AssetService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/vending/FlagContentActivity;)Lcom/android/vending/model/Asset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mAsset:Lcom/android/vending/model/Asset;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/vending/FlagContentActivity;Lcom/android/vending/model/Asset;)Lcom/android/vending/model/Asset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity;->mAsset:Lcom/android/vending/model/Asset;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/vending/FlagContentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/FlagContentActivity;->displayAssetInfo()V

    return-void
.end method

.method private displayAssetInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v3, p0, Lcom/android/vending/FlagContentActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v3, :cond_0

    .line 171
    const v3, 0x7f07003a

    invoke-virtual {p0, v3}, Lcom/android/vending/FlagContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f07003b

    invoke-virtual {p0, v4}, Lcom/android/vending/FlagContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/vending/FlagContentActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v2, usagesToPreLoad:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset$AppImageUsage;>;"
    sget-object v3, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v3, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v3, v5, v2}, Lcom/android/vending/AssetItemAdapter;->loadBitmapsForAsset(ILjava/util/List;)V

    .line 184
    const v3, 0x7f08003b

    invoke-virtual {p0, v3}, Lcom/android/vending/FlagContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 185
    .local v1, snippetContainer:Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, assetSnippet:Landroid/view/View;
    const v3, 0x7f080063

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 187
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    const v3, 0x7f08001e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/vending/FlagContentActivity;->mThumbnailView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private postFlag()V
    .locals 5

    .prologue
    .line 325
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchRequestRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    new-instance v1, Lcom/android/vending/FlagContentActivity$FlagRequest;

    iget-object v2, p0, Lcom/android/vending/FlagContentActivity;->mAssetId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/FlagContentActivity;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    iget-object v4, p0, Lcom/android/vending/FlagContentActivity;->mFlagMessage:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/vending/FlagContentActivity$FlagRequest;-><init>(Ljava/lang/String;Lcom/android/vending/model/ModifyCommentRequest$FlagType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 327
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/FlagContentActivity;->setResult(I)V

    .line 328
    invoke-virtual {p0}, Lcom/android/vending/FlagContentActivity;->finish()V

    .line 329
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0, v11}, Lcom/android/vending/FlagContentActivity;->requestWindowFeature(I)Z

    .line 80
    const v7, 0x7f04003b

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->setContentView(I)V

    .line 81
    const v7, 0x7f0800cd

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, p0, Lcom/android/vending/FlagContentActivity;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    .line 82
    sget-object v7, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_HIDE_CONTENT_RATING:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v7}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 83
    .local v3, hideContent:Z
    if-eqz v3, :cond_0

    .line 84
    iget-object v7, p0, Lcom/android/vending/FlagContentActivity;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    const v8, 0x7f0800d2

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :cond_0
    const v7, 0x7f0800d4

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 88
    .local v6, submitButton:Landroid/widget/Button;
    new-instance v7, Lcom/android/vending/FlagContentActivity$1;

    invoke-direct {v7, p0}, Lcom/android/vending/FlagContentActivity$1;-><init>(Lcom/android/vending/FlagContentActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v7, p0, Lcom/android/vending/FlagContentActivity;->mFlagRadioButtons:Landroid/widget/RadioGroup;

    new-instance v8, Lcom/android/vending/FlagContentActivity$2;

    invoke-direct {v8, p0, v6}, Lcom/android/vending/FlagContentActivity$2;-><init>(Lcom/android/vending/FlagContentActivity;Landroid/widget/Button;)V

    invoke-virtual {v7, v8}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 105
    const v7, 0x7f080054

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 106
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v7, Lcom/android/vending/FlagContentActivity$3;

    invoke-direct {v7, p0}, Lcom/android/vending/FlagContentActivity$3;-><init>(Lcom/android/vending/FlagContentActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/vending/FlagContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 114
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "EverInstalled"

    invoke-virtual {v5, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 115
    sget-object v7, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->SHOW_ONLY_IF_OWNED:Ljava/util/EnumSet;

    invoke-virtual {v7}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 116
    .local v1, flag:Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    invoke-virtual {v1}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->flagRadioButtonId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 120
    .end local v1           #flag:Lcom/android/vending/model/ModifyCommentRequest$FlagType;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v7, "assetid"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/vending/FlagContentActivity;->mAssetId:Ljava/lang/String;

    .line 122
    new-instance v7, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/vending/FlagContentActivity$FlagDialogAccessor;-><init>(Lcom/android/vending/FlagContentActivity;Lcom/android/vending/FlagContentActivity$1;)V

    iput-object v7, p0, Lcom/android/vending/FlagContentActivity;->mExtendedMessageDialog:Lcom/android/vending/controller/DialogAccessor;

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 124
    new-instance v7, Lcom/android/vending/api/AssetService;

    iget-object v8, p0, Lcom/android/vending/FlagContentActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/vending/api/AssetService;-><init>(Lcom/android/vending/api/RequestManager;Lcom/android/vending/cache/CacheManager;)V

    iput-object v7, p0, Lcom/android/vending/FlagContentActivity;->mAssetService:Lcom/android/vending/api/AssetService;

    .line 125
    new-instance v7, Lcom/android/vending/AssetItemAdapter;

    iget-object v8, p0, Lcom/android/vending/FlagContentActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, p0, v8}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 126
    iget-object v7, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v7, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 127
    iget-object v7, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v8, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v7, v8}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 130
    if-eqz p1, :cond_2

    .line 131
    const-string v7, "flag_type"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, flagTypeString:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 133
    invoke-static {v2}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->valueOf(Ljava/lang/String;)Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    move-result-object v7

    iput-object v7, p0, Lcom/android/vending/FlagContentActivity;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    .line 137
    .end local v2           #flagTypeString:Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;

    invoke-direct {v7, p0}, Lcom/android/vending/FlagContentActivity$LoadAssetInfoAction;-><init>(Lcom/android/vending/FlagContentActivity;)V

    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 138
    if-nez p1, :cond_3

    move v7, v11

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/vending/FlagContentActivity;->startSetupActionChain(Z)V

    .line 139
    return-void

    :cond_3
    move v7, v10

    .line 138
    goto :goto_1
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 3
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 156
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 158
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v1, p0, Lcom/android/vending/FlagContentActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 161
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "flag_type"

    iget-object v1, p0, Lcom/android/vending/FlagContentActivity;->mFlagType:Lcom/android/vending/model/ModifyCommentRequest$FlagType;

    invoke-virtual {v1}, Lcom/android/vending/model/ModifyCommentRequest$FlagType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 153
    return-void
.end method
