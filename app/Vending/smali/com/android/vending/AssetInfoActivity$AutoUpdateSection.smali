.class Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoUpdateSection"
.end annotation


# instance fields
.field private mAutoUpdateCheckBox:Landroid/widget/CheckBox;

.field private mAutoUpdateView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method private constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 2300
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2300
    invoke-direct {p0, p1}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;-><init>(Lcom/android/vending/AssetInfoActivity;)V

    return-void
.end method


# virtual methods
.method protected onAttach()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2306
    const v1, 0x7f0701b4

    const v2, 0x7f0701b5

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    move-result-object v0

    .line 2307
    .local v0, header:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2309
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->inflateView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    .line 2310
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    .line 2312
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 2313
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 2314
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    const/16 v2, 0x12

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->setActionTag(Landroid/view/View;I)V

    .line 2315
    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->addView(Landroid/view/View;)V

    .line 2316
    return-void
.end method

.method public refresh()V
    .locals 6

    .prologue
    .line 2320
    const/4 v0, 0x0

    .line 2321
    .local v0, activate:Z
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v2

    .line 2322
    .local v2, localAsset:Lcom/android/vending/model/LocalAsset;
    const/4 v3, 0x0

    .line 2323
    .local v3, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    if-eqz v2, :cond_1

    .line 2324
    invoke-virtual {v2}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    .line 2325
    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v3, v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 2329
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 2330
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4, v5}, Lcom/android/vending/model/Asset;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 2331
    .local v1, enabled:Z
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->mAutoUpdateCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2333
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->activate()V

    .line 2337
    .end local v1           #enabled:Z
    :goto_1
    return-void

    .line 2325
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2335
    :cond_3
    invoke-virtual {p0}, Lcom/android/vending/AssetInfoActivity$AutoUpdateSection;->deactivate()V

    goto :goto_1
.end method
