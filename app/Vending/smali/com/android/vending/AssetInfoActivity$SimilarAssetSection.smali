.class Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;
.super Lcom/android/vending/AssetInfoActivity$Section;
.source "AssetInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimilarAssetSection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;
    }
.end annotation


# instance fields
.field private mAssetsContainer:Landroid/widget/LinearLayout;

.field private mAssetsLoadingIndicator:Landroid/view/View;

.field private mMoreAssets:Landroid/widget/LinearLayout;

.field private mNoSimilarAssets:Landroid/widget/TextView;

.field private mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

.field private mSimilarLoaded:Z

.field final synthetic this$0:Lcom/android/vending/AssetInfoActivity;


# direct methods
.method public constructor <init>(Lcom/android/vending/AssetInfoActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/vending/AssetInfoActivity$Section;-><init>(Lcom/android/vending/AssetInfoActivity;Lcom/android/vending/AssetInfoActivity$1;)V

    .line 2207
    new-instance v0, Lcom/android/vending/AssetItemAdapter;

    iget-object v1, p1, Lcom/android/vending/AssetInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/vending/AssetItemAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 2208
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    new-instance v1, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$1;-><init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;Lcom/android/vending/AssetInfoActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2214
    return-void
.end method

.method static synthetic access$5402(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2157
    iput-boolean p1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarLoaded:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;)Lcom/android/vending/AssetItemAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    return-object v0
.end method


# virtual methods
.method public getLoadingAction()Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;
    .locals 1

    .prologue
    .line 2296
    new-instance v0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;

    invoke-direct {v0, p0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection$LoadSimilarAssetsAction;-><init>(Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;)V

    return-object v0
.end method

.method protected onAttach()V
    .locals 2

    .prologue
    .line 2218
    const v0, 0x7f070157

    const v1, 0x7f0700c7

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addHeader(II)Landroid/widget/TwoLineListItem;

    .line 2220
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    .line 2221
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2222
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addViewWithoutPadding(Landroid/view/View;)V

    .line 2224
    const v0, 0x7f040044

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    .line 2225
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2226
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v1, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetInfoActivity;->setViewOnClickListener(Landroid/view/View;)V

    .line 2227
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addViewWithoutPadding(Landroid/view/View;)V

    .line 2229
    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    .line 2230
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    const v1, 0x7f07018f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2231
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2232
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addView(Landroid/view/View;)V

    .line 2234
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->inflateView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    .line 2235
    iget-object v0, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->addView(Landroid/view/View;)V

    .line 2236
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 2283
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2284
    .local v2, position:I
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter;->getAssets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/Asset;

    .line 2285
    .local v0, asset:Lcom/android/vending/model/Asset;
    const-string v4, "asset-similar"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v6, v6, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v6}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lcom/android/vending/AssetInfoActivity;->getReferrer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 2286
    .local v3, referrerUrl:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v4, v4, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2288
    const-string v4, "originalPackage"

    iget-object v5, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    iget-object v5, v5, Lcom/android/vending/AssetInfoActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v5}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2291
    :cond_0
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/android/vending/model/Asset;->getViewInfoIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 2292
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4, v1}, Lcom/android/vending/AssetInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 2293
    return-void
.end method

.method public refresh()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2240
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2241
    iget-boolean v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarLoaded:Z

    if-nez v4, :cond_0

    .line 2242
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2243
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2244
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2245
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2276
    :goto_0
    return-void

    .line 2249
    :cond_0
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4}, Lcom/android/vending/AssetItemAdapter;->getCount()I

    move-result v0

    .line 2250
    .local v0, count:I
    if-lez v0, :cond_2

    .line 2251
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->this$0:Lcom/android/vending/AssetInfoActivity;

    invoke-virtual {v4}, Lcom/android/vending/AssetInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 2253
    .local v1, horizontalPadding:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2254
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mSimilarAssetsAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/vending/AssetItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2257
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v1, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 2262
    invoke-virtual {p0, v3}, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->makeFocusable(Landroid/view/View;)V

    .line 2263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2264
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2265
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2267
    .end local v3           #v:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2268
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2269
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2275
    .end local v1           #horizontalPadding:I
    .end local v2           #i:I
    :goto_2
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsLoadingIndicator:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2271
    :cond_2
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mAssetsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2272
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mMoreAssets:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2273
    iget-object v4, p0, Lcom/android/vending/AssetInfoActivity$SimilarAssetSection;->mNoSimilarAssets:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method
