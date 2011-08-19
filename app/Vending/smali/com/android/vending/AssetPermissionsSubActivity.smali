.class public Lcom/android/vending/AssetPermissionsSubActivity;
.super Lcom/android/vending/BaseConfirmSubActivity;
.source "AssetPermissionsSubActivity.java"

# interfaces
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetPermissionsSubActivity$LoadConfirmPermissionsDisplay;
    }
.end annotation


# instance fields
.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mIsInstallFlow:Z

.field private mPermInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/BaseConfirmSubActivity;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AssetPermissionsSubActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->updateSnippet()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/AssetPermissionsSubActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->setupAndDisplayPermissions()V

    return-void
.end method

.method private setupAndDisplayPermissions()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 130
    iget-object v6, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v6, v8}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v1

    .line 131
    .local v1, asset:Lcom/android/vending/model/Asset;
    invoke-virtual {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v6

    const-string v7, "asset"

    invoke-virtual {v6, v7, v1}, Lcom/android/vending/controller/RequestParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->updateSnippet()V

    .line 135
    iget-object v6, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mPermInfos:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 136
    invoke-virtual {v1, p0}, Lcom/android/vending/model/Asset;->loadPermissionInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mPermInfos:Ljava/util/ArrayList;

    .line 139
    :cond_0
    const v6, 0x7f0800b4

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 140
    .local v5, settingsDescView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mPermInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 141
    const v6, 0x7f070188

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const v6, 0x7f0800b6

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const v6, 0x7f0800b8

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 152
    .local v4, okButton:Landroid/widget/Button;
    const v6, 0x7f080054

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 153
    .local v2, cancelButton:Landroid/widget/Button;
    iget-boolean v6, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mIsInstallFlow:Z

    if-eqz v6, :cond_2

    .line 154
    const v6, 0x7f07009d

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 155
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    :goto_1
    return-void

    .line 143
    .end local v2           #cancelButton:Landroid/widget/Button;
    .end local v4           #okButton:Landroid/widget/Button;
    :cond_1
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    iget-object v6, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mPermInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v6}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 144
    .local v0, asp:Landroid/widget/AppSecurityPermissions;
    const v6, 0x7f0800b5

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 145
    .local v3, mPermsView:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 158
    .end local v0           #asp:Landroid/widget/AppSecurityPermissions;
    .end local v3           #mPermsView:Landroid/widget/LinearLayout;
    .restart local v2       #cancelButton:Landroid/widget/Button;
    .restart local v4       #okButton:Landroid/widget/Button;
    :cond_2
    const v6, 0x7f0701c8

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(I)V

    .line 159
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    const v6, 0x7f0800b7

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v6, 0x7f0800b9

    invoke-virtual {p0, v6}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateSnippet()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 167
    const v2, 0x7f08003b

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetPermissionsSubActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 168
    .local v0, appInfoView:Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, snippetView:Landroid/view/View;
    const v2, 0x7f08001e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mThumbnailView:Landroid/widget/ImageView;

    .line 170
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 171
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 172
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/BaseConfirmSubActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 100
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mController:Lcom/android/vending/controller/Controller;

    invoke-interface {v0, p1, p0}, Lcom/android/vending/controller/Controller;->handleRequest(ILcom/android/vending/BaseActivity;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-virtual {p0, v4}, Lcom/android/vending/AssetPermissionsSubActivity;->requestWindowFeature(I)Z

    .line 53
    invoke-super {p0, p1}, Lcom/android/vending/BaseConfirmSubActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v2, Lcom/android/vending/AssetItemAdapter;

    iget-object v3, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 56
    iget-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v2, p0}, Lcom/android/vending/AssetItemAdapter;->addImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 57
    iget-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    sget-object v3, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetItemAdapter;->setViewType(Lcom/android/vending/AssetItemAdapter$ViewType;)V

    .line 58
    iget-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v3, Lcom/android/vending/AssetPermissionsSubActivity$1;

    invoke-direct {v3, p0}, Lcom/android/vending/AssetPermissionsSubActivity$1;-><init>(Lcom/android/vending/AssetPermissionsSubActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 69
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "assetid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, assetId:Ljava/lang/String;
    sget-object v2, Lcom/android/vending/Consts;->PERM_INFOS_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mPermInfos:Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "during_install_flow"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mIsInstallFlow:Z

    .line 73
    new-instance v2, Lcom/android/vending/AssetPermissionsSubActivity$LoadConfirmPermissionsDisplay;

    iget-object v3, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/vending/AssetPermissionsSubActivity$LoadConfirmPermissionsDisplay;-><init>(Lcom/android/vending/AssetPermissionsSubActivity;Ljava/lang/String;Lcom/android/vending/AssetItemAdapter;)V

    invoke-virtual {p0, v2}, Lcom/android/vending/AssetPermissionsSubActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 74
    if-nez p1, :cond_0

    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/vending/AssetPermissionsSubActivity;->startSetupActionChain(Z)V

    .line 75
    return-void

    .line 74
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 83
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 86
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 89
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/vending/BaseConfirmSubActivity;->onRestart()V

    .line 118
    invoke-virtual {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 119
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method protected setupContentView()V
    .locals 1

    .prologue
    .line 79
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetPermissionsSubActivity;->setContentView(I)V

    .line 80
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 3
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/vending/AssetPermissionsSubActivity;->getSharedParameters()Lcom/android/vending/controller/RequestParameters;

    move-result-object v1

    const-string v2, "asset"

    invoke-virtual {v1, v2}, Lcom/android/vending/controller/RequestParameters;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 108
    .local v0, asset:Lcom/android/vending/model/Asset;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/vending/AssetPermissionsSubActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1}, Lcom/android/vending/AssetItemAdapter;->reloadLocalAssetInfo(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
