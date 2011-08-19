.class public abstract Lcom/android/vending/billing/BasePurchaseActivity;
.super Lcom/android/vending/BaseActivity;
.source "BasePurchaseActivity.java"

# interfaces
.implements Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;


# static fields
.field protected static sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;


# instance fields
.field protected mAssetId:Ljava/lang/String;

.field private mCachedPackageName:Ljava/lang/String;

.field private mCachedSignatureHash:[B

.field protected mIsInAppPurchase:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mRootView:Landroid/view/View;

.field protected mTitleBarView:Landroid/view/View;

.field protected mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    sput-object v0, Lcom/android/vending/billing/BasePurchaseActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public computeSignatureHash(Ljava/lang/String;)[B
    .locals 5
    .parameter "packageName"

    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedSignatureHash:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedSignatureHash:[B

    .line 259
    :goto_0
    return-object v3

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 251
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 253
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/android/vending/util/Md5Util;->secureHashBytes([B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedSignatureHash:[B

    .line 254
    iput-object p1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedPackageName:Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedSignatureHash:[B
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    .end local v0           #bytes:[B
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 257
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 259
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "icicle"

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createViewOnStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected determineCheckoutAuthService()Lcom/android/vending/BaseActivity$AuthService;
    .locals 2

    .prologue
    .line 186
    sget-object v1, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_USE_CHECKOUT_QA_SERVICE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v1}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, useQaServiceStr:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_QA:Lcom/android/vending/BaseActivity$AuthService;

    .line 192
    :goto_0
    return-object v1

    .line 189
    :cond_0
    const-string v1, "sandbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT_SANDBOX:Lcom/android/vending/BaseActivity$AuthService;

    goto :goto_0

    .line 192
    :cond_1
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->CHECKOUT:Lcom/android/vending/BaseActivity$AuthService;

    goto :goto_0
.end method

.method protected displayTitleBar(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V
    .locals 10
    .parameter "title"
    .parameter "author"
    .parameter "rating"
    .parameter "price"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    iget-boolean v5, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mDestroyed:Z

    if-eqz v5, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v5, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    const v6, 0x7f08001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .local v4, titleView:Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 160
    iget-object v5, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    const v6, 0x7f08004c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, authorView:Landroid/widget/TextView;
    const v5, 0x7f070150

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p2, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/android/vending/billing/BasePurchaseActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v5, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    const v6, 0x7f08001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RatingBar;

    .line 164
    .local v3, starRatingView:Landroid/widget/RatingBar;
    const/4 v5, 0x0

    cmpl-float v5, p3, v5

    if-ltz v5, :cond_2

    .line 165
    invoke-virtual {v3, p3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 166
    invoke-virtual {v3, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 171
    :goto_1
    iget-object v5, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    const v6, 0x7f080063

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    .local v2, priceView:Landroid/widget/TextView;
    if-eqz p4, :cond_3

    .line 173
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    :goto_2
    iget-object v5, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    const v6, 0x7f080062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    .local v0, accountNameView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    .end local v0           #accountNameView:Landroid/widget/TextView;
    .end local v2           #priceView:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v3, v9}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_1

    .line 176
    .restart local v2       #priceView:Landroid/widget/TextView;
    :cond_3
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method protected getCheckoutAuthToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    sget-object v1, Lcom/android/vending/billing/BasePurchaseActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/VendingApplication;->getCachedAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, account:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 267
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mApplication:Lcom/android/vending/VendingApplication;

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getTitleBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onAssetLoaded()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->createView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mRootView:Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getTitleBarView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->determineCheckoutAuthService()Lcom/android/vending/BaseActivity$AuthService;

    move-result-object v1

    sput-object v1, Lcom/android/vending/billing/BasePurchaseActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    .line 61
    iput-object v2, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedSignatureHash:[B

    .line 64
    if-eqz p1, :cond_2

    const-string v1, "assetid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mAssetId:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mAssetId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "assetid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mAssetId:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mAssetId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mAssetId:Ljava/lang/String;

    const-string v2, "inapp:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mIsInAppPurchase:Z

    .line 74
    const-string v1, "asset_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mPackageName:Ljava/lang/String;

    .line 75
    const-string v1, "asset_version_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mVersionCode:I

    .line 77
    :cond_1
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    move-object v1, v2

    .line 64
    goto :goto_0
.end method

.method public onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 0
    .parameter "response"
    .parameter "usage"

    .prologue
    .line 210
    return-void
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 0
    .parameter "purchaseResponse"

    .prologue
    .line 216
    return-void
.end method

.method public onPurchaseMetadataResponse(Lcom/android/vending/model/PurchaseMetadataResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 228
    return-void
.end method

.method public onPurchasePostError()V
    .locals 1

    .prologue
    .line 234
    const-string v0, "PurchasePost error"

    invoke-static {v0}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 222
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/vending/BaseActivity;->onStart()V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mCachedSignatureHash:[B

    .line 88
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->createViewOnStart()Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 90
    iput-object v0, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mRootView:Landroid/view/View;

    .line 91
    invoke-virtual {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->getTitleBarView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BasePurchaseActivity;->mTitleBarView:Landroid/view/View;

    .line 93
    :cond_0
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 198
    return-void
.end method
