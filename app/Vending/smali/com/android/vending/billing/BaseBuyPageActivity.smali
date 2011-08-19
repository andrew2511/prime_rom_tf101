.class public abstract Lcom/android/vending/billing/BaseBuyPageActivity;
.super Lcom/android/vending/billing/BasePurchaseActivity;
.source "BaseBuyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;
.implements Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;
.implements Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/BaseBuyPageActivity$6;,
        Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;,
        Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;,
        Lcom/android/vending/billing/BaseBuyPageActivity$State;
    }
.end annotation


# static fields
.field private static sCBForcingSelection:Z


# instance fields
.field private mAccountName:Landroid/widget/TextView;

.field private mAsset:Lcom/android/vending/model/Asset;

.field private mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

.field protected mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

.field private mBillingInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument;",
            ">;"
        }
    .end annotation
.end field

.field protected mBuyButton:Landroid/widget/Button;

.field private mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

.field private mCarrierLogoBitmap:Landroid/graphics/Bitmap;

.field private mCart:Lcom/android/vending/model/ShoppingCart;

.field protected mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

.field mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

.field private mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

.field private mOrderErrorAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

.field protected mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

.field protected mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

.field private mRadioNetworkAvailable:Z

.field private mSavedInstrumentId:Ljava/lang/String;

.field private mSavedInstrumentType:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

.field private mSelectPaymentAdapter:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;

.field private mSelectPaymentButton:Landroid/widget/Button;

.field private mSelectPaymentDialog:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

.field private mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

.field private mTaxExclusive:Ljava/lang/String;

.field private mTaxInclusive:Ljava/lang/String;

.field protected mThumbnailView:Landroid/widget/ImageView;

.field private mTosAccepted:Z

.field private mTosCheckboxText:Ljava/lang/String;

.field private mTosDialogLeadingSection:Ljava/lang/String;

.field private mTosDialogTitle:Ljava/lang/String;

.field private mTosText:Ljava/lang/String;

.field private mTosUrl:Ljava/lang/String;

.field protected mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/vending/billing/BasePurchaseActivity;-><init>()V

    .line 2053
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/BaseBuyPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayWidgets()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/vending/billing/BaseBuyPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayCheckoutTosDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/vending/billing/BaseBuyPageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosAccepted:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/vending/billing/BaseBuyPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTosErrorMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/billing/BaseBuyPageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->doPaymentSelected(I)V

    return-void
.end method

.method private addAddressSnippetToIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 1637
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v0

    .line 1638
    if-nez v0, :cond_0

    .line 1645
    :goto_0
    return-void

    .line 1641
    :cond_0
    const-string v1, "billing_address_snippet"

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1642
    const-string v1, "billing_address_country"

    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1643
    const-string v1, "billing_phone_number"

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCarrierBillingPhoneNumber(Lcom/android/vending/model/CarrierProvisioningResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addAddressToIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v0

    .line 1654
    if-nez v0, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v1

    .line 1658
    if-eqz v1, :cond_0

    .line 1661
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCarrierBillingPhoneNumber(Lcom/android/vending/model/CarrierProvisioningResponse;)Ljava/lang/String;

    move-result-object v2

    .line 1662
    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberName()Ljava/lang/String;

    move-result-object v0

    .line 1663
    invoke-virtual {v1}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v3

    .line 1664
    invoke-virtual {v1}, Lcom/android/vending/model/Address;->getAddress2()Ljava/lang/String;

    move-result-object v4

    .line 1665
    invoke-virtual {v1}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 1666
    invoke-virtual {v1}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v6

    .line 1667
    invoke-virtual {v1}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    .line 1668
    invoke-virtual {v1}, Lcom/android/vending/model/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 1670
    const-string v8, "billing_name"

    invoke-virtual {p1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1671
    const-string v0, "billing_phone_number"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v0, "billing_address_line1"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1673
    const-string v0, "billing_address_line2"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1674
    const-string v0, "billing_address_city"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    const-string v0, "billing_address_state"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1676
    const-string v0, "billing_address_zip_code"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1677
    const-string v0, "billing_address_country"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private containsBillingType(Ljava/util/List;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)Z
    .locals 5
    .parameter
    .parameter "billingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument;",
            ">;",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, billingInstruments:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PurchaseInfo$BillingInstrument;>;"
    const/4 v4, 0x0

    .line 908
    if-nez p1, :cond_0

    move v3, v4

    .line 918
    :goto_0
    return v3

    .line 911
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 912
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 913
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 914
    .local v1, instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 915
    const/4 v3, 0x1

    goto :goto_0

    .line 912
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    :cond_2
    move v3, v4

    .line 918
    goto :goto_0
.end method

.method private createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchasePostAction;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchasePostAction;->cancel()V

    .line 1557
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1558
    const-string v1, "assetid"

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    const-string v1, "transaction_id"

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1560
    const-string v1, "account_name"

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    iget-boolean v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mIsInAppPurchase:Z

    if-eqz v1, :cond_1

    .line 1562
    const-string v1, "asset_package"

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const-string v1, "asset_version_code"

    iget v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mVersionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1565
    :cond_1
    return-object v0
.end method

.method private displayCheckoutTosDialog()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 696
    const v2, 0x7f04002d

    invoke-static {v2, p0}, Lcom/android/vending/util/Util;->inflateView(ILandroid/content/Context;)Landroid/view/View;

    move-result-object v13

    .line 698
    .local v13, view:Landroid/view/View;
    const v2, 0x7f0800ab

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 699
    .local v11, progressView:Landroid/view/View;
    const v2, 0x7f0800ac

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 701
    .local v12, tosView:Landroid/view/View;
    const v2, 0x7f0800ad

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 702
    .local v9, leadingSectionView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogLeadingSection:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const v2, 0x7f0800ae

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 705
    .local v0, tosText:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :goto_0
    new-instance v10, Lcom/android/vending/billing/BaseBuyPageActivity$4;

    invoke-direct {v10, p0}, Lcom/android/vending/billing/BaseBuyPageActivity$4;-><init>(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    .line 733
    .local v10, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 734
    .local v1, alertBuilder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v2, v13

    move v3, v14

    move v4, v14

    move v5, v14

    move v6, v14

    .line 735
    invoke-virtual/range {v1 .. v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 736
    const v2, 0x7f07002f

    invoke-virtual {v1, v2, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    const v2, 0x7f070030

    invoke-virtual {v1, v2, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 740
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 743
    const/4 v2, -0x1

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    .line 744
    .local v7, acceptButton:Landroid/widget/Button;
    invoke-virtual {v7, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 747
    new-instance v2, Lcom/android/vending/billing/BaseBuyPageActivity$5;

    invoke-direct {v2, p0, v11, v12, v7}, Lcom/android/vending/billing/BaseBuyPageActivity$5;-><init>(Lcom/android/vending/billing/BaseBuyPageActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 755
    return-void

    .line 709
    .end local v1           #alertBuilder:Landroid/app/AlertDialog$Builder;
    .end local v7           #acceptButton:Landroid/widget/Button;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v10           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private displayFooter(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 473
    return-void
.end method

.method private displayFromStoredAsset(Lcom/android/vending/model/Asset;)V
    .locals 3
    .parameter "asset"

    .prologue
    .line 1544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    .local v0, assets:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/Asset;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/AssetItemAdapter;->addAssets(Ljava/util/List;Ljava/util/List;)V

    .line 1547
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-direct {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTitleBar(Lcom/android/vending/model/Asset;)V

    .line 1548
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayPriceAndTaxes()V

    .line 1549
    return-void
.end method

.method private displayOrderErrorDialog(III)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1461
    if-eq p2, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 1464
    :goto_0
    if-eq p3, v1, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1468
    :goto_1
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mOrderErrorAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f070037

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1471
    return-void

    :cond_0
    move-object v4, v2

    .line 1461
    goto :goto_0

    :cond_1
    move-object v5, v2

    .line 1464
    goto :goto_1
.end method

.method private displayTOSWidget()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 655
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v10, 0x7f08007f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 656
    .local v1, layout:Landroid/view/View;
    const v9, 0x7f080080

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 658
    .local v6, tosCheckBoxTextView:Landroid/widget/TextView;
    const/16 v7, 0x8

    .line 659
    .local v7, tosCheckBoxVisibility:I
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayCheckoutTosDialog()V

    .line 692
    :cond_0
    :goto_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 693
    return-void

    .line 661
    :cond_1
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 663
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    const-string v10, "BEGIN_LINK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 664
    .local v4, startLinkIndex:I
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    const-string v10, "END_LINK"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 665
    .local v0, endLinkIndex:I
    if-ltz v4, :cond_2

    if-gez v0, :cond_3

    .line 666
    :cond_2
    const-string v9, "No ToS link for the checkbox"

    invoke-static {v9}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;)V

    .line 667
    const v9, 0x7f0700fd

    invoke-virtual {p0, v9}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :goto_1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 690
    const/4 v7, 0x0

    goto :goto_0

    .line 670
    :cond_3
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    invoke-virtual {v9, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, leading:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    const-string v10, "BEGIN_LINK"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v4

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 673
    .local v3, middle:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    const-string v10, "END_LINK"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 675
    .local v8, trailing:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 676
    .local v5, stringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 677
    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 678
    invoke-virtual {v5, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 679
    new-instance v9, Lcom/android/vending/billing/BaseBuyPageActivity$3;

    invoke-direct {v9, p0}, Lcom/android/vending/billing/BaseBuyPageActivity$3;-><init>(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/16 v12, 0x21

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 686
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private displayTaxAndTotal(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f08007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    return-void
.end method

.method private displayTitleBar(Lcom/android/vending/model/Asset;)V
    .locals 6
    .parameter "asset"

    .prologue
    .line 521
    const/high16 v2, -0x4080

    .line 522
    .local v2, rating:F
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v3

    if-lez v3, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v3

    double-to-float v2, v3

    .line 525
    :cond_0
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v3}, Lcom/android/vending/model/ShoppingCart;->getItemPrice()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 526
    .local v1, price:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTitleBar(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 531
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v3, v4, v5}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 532
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    return-void

    .line 525
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #price:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/Asset;->getPrice()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method private displayTosErrorMessage()V
    .locals 3

    .prologue
    .line 623
    const v1, 0x7f07014d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 624
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 625
    return-void
.end method

.method private displayWidgets()V
    .locals 6

    .prologue
    const v5, 0x7f080086

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 479
    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v2, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v1, v2, :cond_2

    .line 484
    invoke-direct {p0, v4}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTaxAndTotal(I)V

    .line 485
    invoke-direct {p0, v4}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayFooter(I)V

    .line 486
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 488
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTOSWidget()V

    .line 489
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 513
    :cond_1
    :goto_0
    return-void

    .line 490
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v2, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v2, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v1, v2, :cond_1

    .line 491
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTaxAndTotal(I)V

    .line 492
    invoke-direct {p0, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayFooter(I)V

    .line 493
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f080060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 494
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_4

    .line 495
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :cond_4
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayPriceAndTaxes()V

    .line 500
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTOSWidget()V

    .line 502
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    if-eqz v1, :cond_7

    .line 503
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v2, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v1, v2, :cond_6

    .line 505
    :cond_5
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 507
    :cond_6
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 510
    :cond_7
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private doInvalidCard()V
    .locals 3

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 945
    const v1, 0x7f070147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 946
    const v2, 0x7f070148

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method private doPaymentSelected(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1855
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1857
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    const v1, 0x7f070119

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1858
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1859
    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 1860
    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    .line 1861
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayWidgets()V

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingInstruments:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1871
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingInstruments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 1872
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1877
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentAdapter:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;

    invoke-virtual {v1, p1}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1878
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1880
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->syncSelectButtonAppearance(Lcom/android/vending/model/PurchaseInfo$BillingInstrument;)V

    .line 1882
    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v1

    .line 1884
    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->hasId()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1885
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    if-ne v1, v0, :cond_2

    .line 1886
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setupAndRefreshCarrierBillingInstrument()V

    goto :goto_0

    .line 1887
    :cond_2
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CREDIT_CARD:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    if-ne v1, v0, :cond_3

    .line 1890
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startAddCreditCardActivity()V

    goto :goto_0

    .line 1891
    :cond_3
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->EFT:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    if-ne v1, v0, :cond_0

    .line 1894
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startGermanDirectDebitActivity()V

    goto :goto_0

    .line 1896
    :cond_4
    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1899
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->doInvalidCard()V

    goto :goto_0

    .line 1901
    :cond_5
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setCarrierBillingShown()V

    .line 1902
    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 1903
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->invalidateAndRepost()V

    goto :goto_0
.end method

.method private getCarrierBillingPhoneNumber(Lcom/android/vending/model/CarrierProvisioningResponse;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1777
    invoke-virtual {p1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1779
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1782
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleSuccessfulPost(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 2
    .parameter "postResponse"

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->hideWaitingUi()V

    .line 1478
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1479
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->resetTosFields()V

    .line 1481
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->hasTermsOfServiceText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1482
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    .line 1487
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceHeaderText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogLeadingSection:Ljava/lang/String;

    .line 1488
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogTitle:Ljava/lang/String;

    .line 1489
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setPurchaseInfo(Lcom/android/vending/model/PurchaseInfo;)V

    .line 1490
    return-void

    .line 1483
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->hasTermsOfServiceUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    .line 1485
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getTermsOfServiceCheckboxText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasTaxChanged()Z
    .locals 4

    .prologue
    .line 597
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v3}, Lcom/android/vending/model/ShoppingCart;->getTaxExclusive()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, taxExclusive:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v3}, Lcom/android/vending/model/ShoppingCart;->getTaxInclusive()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, taxInclusive:Ljava/lang/String;
    const/4 v0, 0x0

    .line 601
    .local v0, taxChanged:Z
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxExclusive:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxExclusive:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxInclusive:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxInclusive:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 603
    :cond_1
    const/4 v0, 0x1

    .line 605
    :cond_2
    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxExclusive:Ljava/lang/String;

    .line 606
    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxInclusive:Ljava/lang/String;

    .line 607
    return v0
.end method

.method private hasValidInstrument(Ljava/util/List;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PurchaseInfo$BillingInstrument;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, billingInstruments:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PurchaseInfo$BillingInstrument;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 930
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 931
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 932
    .local v1, instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 933
    const/4 v3, 0x1

    .line 936
    .end local v1           #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    :goto_1
    return v3

    .line 930
    .restart local v1       #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 936
    .end local v1           #instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private invalidateAndRepost()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1928
    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    .line 1929
    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    .line 1930
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->showWaitingUi()V

    .line 1931
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->requestAssetAndPurchaseInfo()V

    .line 1932
    return-void
.end method

.method private isBillingInformationEmpty(Lcom/android/vending/model/LocalBillingData;)Z
    .locals 9
    .parameter "billingData"

    .prologue
    .line 1788
    invoke-virtual {p1}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v4

    .line 1789
    .local v4, provisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;
    invoke-virtual {v4}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberAddress()Lcom/android/vending/model/Address;

    move-result-object v6

    .line 1790
    .local v6, subscriberAddress:Lcom/android/vending/model/Address;
    invoke-virtual {v4}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberName()Ljava/lang/String;

    move-result-object v2

    .line 1791
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vending/model/Address;->getAddress1()Ljava/lang/String;

    move-result-object v1

    .line 1792
    .local v1, line1:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vending/model/Address;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 1793
    .local v0, city:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vending/model/Address;->getState()Ljava/lang/String;

    move-result-object v5

    .line 1794
    .local v5, state:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/vending/model/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v7

    .line 1795
    .local v7, zipCode:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCarrierBillingPhoneNumber(Lcom/android/vending/model/CarrierProvisioningResponse;)Ljava/lang/String;

    move-result-object v3

    .line 1797
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private requestAssetAndPurchaseInfo()V
    .locals 6

    .prologue
    .line 962
    const/4 v0, 0x0

    .line 963
    .local v0, needToSendRequest:Z
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-nez v2, :cond_0

    .line 964
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->addAssetRequest(Lcom/android/vending/billing/PurchasePostAction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 965
    const/4 v0, 0x1

    .line 968
    :cond_0
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->addAppIconRequest(Lcom/android/vending/billing/PurchasePostAction;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 969
    const/4 v0, 0x1

    .line 972
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    if-nez v2, :cond_4

    .line 973
    const/4 v0, 0x1

    .line 975
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    if-nez v2, :cond_8

    .line 977
    new-instance v1, Lcom/android/vending/model/PurchasePostRequest;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCheckoutAuthToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .local v1, request:Lcom/android/vending/model/PurchasePostRequest;
    :goto_0
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->tosExplicitlyAccepted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 983
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setTosAccepted(Z)V

    .line 985
    :cond_2
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->isSavedOnServer()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    if-eqz v2, :cond_3

    .line 987
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setCarrierBillingInstrumentKey(Lcom/android/vending/model/LocalBillingData;)V

    .line 989
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setPurchasePostProductType(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 990
    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setSignatureHash(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 991
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v2, v1}, Lcom/android/vending/billing/PurchasePostAction;->queuePostRequest(Lcom/android/vending/model/PurchasePostRequest;)V

    .line 992
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 995
    .end local v1           #request:Lcom/android/vending/model/PurchasePostRequest;
    :cond_4
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierLogoBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 996
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->requestCarrierBillingIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 997
    const/4 v0, 0x1

    .line 1002
    :cond_5
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->addPurchaseProductRequest(Lcom/android/vending/billing/PurchasePostAction;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1003
    const/4 v0, 0x1

    .line 1006
    :cond_6
    if-eqz v0, :cond_7

    .line 1007
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v2, p0, v3}, Lcom/android/vending/billing/PurchasePostAction;->start(Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 1009
    :cond_7
    return-void

    .line 979
    :cond_8
    new-instance v1, Lcom/android/vending/model/PurchasePostRequest;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCheckoutAuthToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTransactionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v5}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #request:Lcom/android/vending/model/PurchasePostRequest;
    goto :goto_0
.end method

.method private requestCarrierBillingIcon()Z
    .locals 3

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v1}, Lcom/android/vending/model/BillingParameter;->hasIconId()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    invoke-virtual {v1}, Lcom/android/vending/model/BillingParameter;->getIconId()Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, iconId:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->BILLING_ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v1, v2, v0}, Lcom/android/vending/billing/PurchasePostAction;->queueImageRequest(Lcom/android/vending/model/Asset$AppImageUsage;Ljava/lang/String;)V

    .line 1046
    const/4 v1, 0x1

    .line 1048
    .end local v0           #iconId:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetTosFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosAccepted:Z

    .line 612
    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    .line 613
    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogLeadingSection:Ljava/lang/String;

    .line 614
    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogTitle:Ljava/lang/String;

    .line 615
    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    .line 616
    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    .line 617
    return-void
.end method

.method private setCarrierBillingShown()V
    .locals 2

    .prologue
    .line 1919
    sget-boolean v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCBForcingSelection:Z

    if-eqz v0, :cond_0

    .line 1920
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCBForcingSelection:Z

    .line 1921
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingDatabase;->setCarrierBillingShown(Z)V

    .line 1922
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v0}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 1924
    :cond_0
    return-void
.end method

.method private setCarrierLogo(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 1267
    if-nez p1, :cond_0

    .line 1277
    :goto_0
    return-void

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1271
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingInstruments:Ljava/util/List;

    sget-object v2, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    invoke-direct {p0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->containsBillingType(Ljava/util/List;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1272
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1273
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1275
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPurchaseInfo(Lcom/android/vending/model/PurchaseInfo;)V
    .locals 3
    .parameter "purchaseInfo"

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    .line 1497
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getShoppingCart()Lcom/android/vending/model/ShoppingCart;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    .line 1498
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTransactionId:Ljava/lang/String;

    .line 1501
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setPolicyUrl(Lcom/android/vending/model/PurchaseInfo;Landroid/view/View;)V

    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, billingInstruments:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PurchaseInfo$BillingInstrument;>;"
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getBillingInstruments()Ljava/util/List;

    move-result-object v0

    .line 1505
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1507
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->hasValidInstrument(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1508
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getSelectedBillingInstrument()Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 1512
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setupBillingInstrumentListWidget(Lcom/android/vending/model/PurchaseInfo;)V

    .line 1517
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v2, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v2, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v1, v2, :cond_2

    .line 1518
    :cond_1
    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    .line 1521
    :cond_2
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayWidgets()V

    .line 1522
    return-void
.end method

.method private setRiskHeaderInfo(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 5
    .parameter

    .prologue
    .line 1163
    new-instance v1, Lcom/android/vending/model/RiskHeaderInfo;

    invoke-direct {v1}, Lcom/android/vending/model/RiskHeaderInfo;-><init>()V

    .line 1164
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 1166
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAccountName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1168
    :goto_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getApiClientContext()Lcom/android/vending/VendingApplication$ApiClientContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication$ApiClientContext;->getAid()Ljava/lang/String;

    move-result-object v3

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/vending/model/RiskHeaderInfo;->setHashedDeviceInfo(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p1, v1}, Lcom/android/vending/model/PurchaseOrderRequest;->setRiskHeaderInfo(Lcom/android/vending/model/RiskHeaderInfo;)V

    .line 1173
    return-void

    .line 1166
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method private setupAndRefreshCarrierBillingInstrument()V
    .locals 1

    .prologue
    .line 1763
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->perhapsSetupCarrierBilling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 1767
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->invalidateAndRepost()V

    .line 1769
    :cond_0
    return-void
.end method

.method private setupBillingInstrumentListWidget(Lcom/android/vending/model/PurchaseInfo;)V
    .locals 13
    .parameter

    .prologue
    .line 763
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getBillingInstruments()Ljava/util/List;

    move-result-object v0

    .line 764
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->userCanAddGdd()Z

    move-result v1

    .line 765
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getEligibleInstrumentTypes()Ljava/util/List;

    .line 769
    new-instance v2, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;

    const v3, 0x1090012

    invoke-direct {v2, p0, v3}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;-><init>(Landroid/content/Context;I)V

    .line 771
    const/4 v3, -0x1

    .line 772
    const/4 v4, 0x0

    .line 773
    const v5, 0x7f070111

    invoke-virtual {p0, v5}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 774
    iget-object v6, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v6}, Lcom/android/vending/model/LocalBillingData;->getCarrierName()Ljava/lang/String;

    move-result-object v6

    .line 779
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->shouldForceNewPaymentSelection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 780
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 783
    :cond_0
    if-eqz v0, :cond_a

    .line 784
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 785
    const/4 v8, 0x0

    move v12, v8

    move v8, v3

    move v3, v12

    :goto_0
    if-ge v3, v7, :cond_6

    .line 786
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 788
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v9

    sget-object v10, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    if-ne v9, v10, :cond_4

    .line 789
    const v9, 0x7f07011b

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 794
    iget-boolean v10, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRadioNetworkAvailable:Z

    if-nez v10, :cond_1

    .line 795
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->setInvalid(Z)V

    .line 805
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->hasInstrumentStatus()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getInstrumentStatus()I

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {p1, v10}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 809
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 814
    :cond_2
    iget-object v10, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {p1, v10}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v10

    if-nez v10, :cond_3

    move-object v4, v9

    move v8, v3

    .line 819
    :cond_3
    invoke-virtual {v2, v9}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->add(Ljava/lang/Object;)V

    .line 785
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 797
    :cond_4
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 798
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 800
    :cond_5
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_6
    move-object v3, v4

    move v4, v8

    .line 823
    :goto_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 824
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    const v5, 0x7f070119

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(I)V

    .line 836
    :goto_3
    const v3, 0x7f070113

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    invoke-virtual {v2}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->getCount()I

    move-result v5

    .line 838
    invoke-virtual {v2, v3, v5}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->insert(Ljava/lang/Object;I)V

    .line 842
    new-instance v3, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;

    sget-object v6, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CREDIT_CARD:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v3, v6, v7, v8}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;-><init>(Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-interface {v0, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 847
    if-eqz v1, :cond_7

    .line 848
    const v1, 0x7f070114

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-virtual {v2}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->getCount()I

    move-result v3

    .line 850
    invoke-virtual {v2, v1, v3}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->insert(Ljava/lang/Object;I)V

    .line 854
    new-instance v1, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;

    sget-object v5, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->EFT:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v1, v5, v6, v7}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;-><init>(Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-interface {v0, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 859
    :cond_7
    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingInstruments:Ljava/util/List;

    .line 860
    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentAdapter:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;

    .line 861
    invoke-virtual {v2, v0}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentAdapter;->setBillingInstruments(Ljava/util/List;)V

    .line 865
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierLogoBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setCarrierLogo(Landroid/graphics/Bitmap;)V

    .line 868
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentDialog:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

    invoke-virtual {v0, v2, v4}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->setRequiredParams(Landroid/widget/ListAdapter;I)V

    .line 869
    return-void

    .line 826
    :cond_8
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 828
    iget-object v5, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v5}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 829
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->doInvalidCard()V

    .line 833
    :goto_4
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-direct {p0, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->syncSelectButtonAppearance(Lcom/android/vending/model/PurchaseInfo$BillingInstrument;)V

    goto :goto_3

    .line 831
    :cond_9
    iget-object v5, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_a
    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto :goto_2
.end method

.method private shouldAddCarrierBilling()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->isProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->isSavedOnServer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRadioNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 886
    :cond_0
    const-string v0, "isProvisioned(): %s isSavedonServer(): %s radio available? %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->isProvisioned()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->isSavedOnServer()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRadioNetworkAvailable:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 903
    :goto_0
    return v0

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-virtual {v0}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTransactionLimit()J

    move-result-wide v2

    .line 899
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v0}, Lcom/android/vending/model/ShoppingCart;->getPriceCurrency()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 901
    :goto_1
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v1}, Lcom/android/vending/model/ShoppingCart;->getPriceMicros()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_3

    move v1, v7

    .line 903
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v6

    .line 899
    goto :goto_1

    :cond_3
    move v1, v6

    .line 901
    goto :goto_2

    :cond_4
    move v0, v6

    .line 903
    goto :goto_0
.end method

.method private shouldForceNewPaymentSelection()Z
    .locals 1

    .prologue
    .line 878
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->shouldAddCarrierBilling()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->isCarrierBillingShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCBForcingSelection:Z

    .line 880
    sget-boolean v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCBForcingSelection:Z

    return v0

    .line 878
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private syncSelectButtonAppearance(Lcom/android/vending/model/PurchaseInfo$BillingInstrument;)V
    .locals 2
    .parameter "instrument"

    .prologue
    const/4 v1, 0x0

    .line 1908
    if-nez p1, :cond_0

    .line 1916
    :goto_0
    return-void

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1915
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0
.end method

.method private tosExplicitlyAccepted()Z
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 643
    iget-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosAccepted:Z

    .line 647
    .end local p0
    :goto_0
    return v0

    .line 644
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 647
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tosUrlAccepted()Z
    .locals 3

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 633
    const/4 v1, 0x1

    .line 636
    :goto_0
    return v1

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 636
    .local v0, tosView:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected addAppIconRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 1
    .parameter "purchasePostAction"

    .prologue
    .line 1075
    const/4 v0, 0x0

    return v0
.end method

.method protected addAssetRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 3
    .parameter "purchasePostAction"

    .prologue
    .line 1059
    new-instance v0, Lcom/android/vending/model/AssetRequest;

    invoke-direct {v0}, Lcom/android/vending/model/AssetRequest;-><init>()V

    .line 1060
    .local v0, assetRequest:Lcom/android/vending/model/AssetRequest;
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->addAssetId(Ljava/lang/String;)V

    .line 1061
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/model/AssetRequest;->setRetrieveExtendedInfo(Z)V

    .line 1062
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/billing/PurchasePostAction;->queueAssetRequest(Lcom/android/vending/model/AssetRequest;Lcom/android/vending/api/AssetService$GetAssetsReceiver;)V

    .line 1063
    const/4 v1, 0x1

    return v1
.end method

.method protected addPurchaseProductRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 1
    .parameter "purchasePostAction"

    .prologue
    .line 1088
    const/4 v0, 0x0

    return v0
.end method

.method protected displayPriceAndTaxes()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 540
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    if-nez v9, :cond_0

    .line 589
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v9}, Lcom/android/vending/model/ShoppingCart;->getItemPrice()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, priceValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTitleBarView:Landroid/view/View;

    const v10, 0x7f080063

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 547
    .local v2, priceView:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 550
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v10, 0x7f080078

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 551
    .local v3, subtotal:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v10, 0x7f080079

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 554
    .local v6, taxRow:Landroid/view/View;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v10, 0x7f08007a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 555
    .local v7, taxText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v9}, Lcom/android/vending/model/ShoppingCart;->getTaxExclusive()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v9, ""

    iget-object v10, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v10}, Lcom/android/vending/model/ShoppingCart;->getTaxExclusive()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 556
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 557
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v9}, Lcom/android/vending/model/ShoppingCart;->getTaxExclusive()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :goto_1
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v10, 0x7f08007b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 565
    .local v8, total:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v9}, Lcom/android/vending/model/ShoppingCart;->getTotal()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .local v4, taxMessageBuilder:Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v9}, Lcom/android/vending/model/ShoppingCart;->hasTaxMessage()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 569
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v9}, Lcom/android/vending/model/ShoppingCart;->getTaxMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->hasTaxChanged()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 573
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 574
    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_2
    const v9, 0x7f07011e

    invoke-virtual {p0, v9}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :cond_3
    iget-object v9, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v10, 0x7f08007c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 579
    .local v5, taxMessageView:Landroid/widget/TextView;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 580
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09002f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 560
    .end local v4           #taxMessageBuilder:Ljava/lang/StringBuilder;
    .end local v5           #taxMessageView:Landroid/widget/TextView;
    .end local v8           #total:Landroid/widget/TextView;
    :cond_4
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 561
    const-string v9, ""

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 583
    .restart local v4       #taxMessageBuilder:Ljava/lang/StringBuilder;
    .restart local v5       #taxMessageView:Landroid/widget/TextView;
    .restart local v8       #total:Landroid/widget/TextView;
    :cond_5
    const-string v9, ""

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 585
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    const v10, 0x1010038

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v0, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 586
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget v10, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method public displayWaitingUiForPurchaseOrderAction()V
    .locals 1

    .prologue
    .line 1443
    const v0, 0x7f070106

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->showWaitPanel(Ljava/lang/CharSequence;)V

    .line 1444
    return-void
.end method

.method protected finishOnOrderSuccess()Z
    .locals 1

    .prologue
    .line 1439
    const/4 v0, 0x1

    return v0
.end method

.method protected getAccountNameView(Landroid/view/View;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .parameter "rootView"
    .parameter "titleBarView"

    .prologue
    .line 425
    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getDefaultRefundPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    const v0, 0x7f0700ff

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Util;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredAccount()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1182
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1183
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/vending/model/AbstractLocalAssetCache;->getByPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 1185
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .end local v0           #localAsset:Lcom/android/vending/model/LocalAsset;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/VendingApplication;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected hideWaitingUi()V
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f080076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 435
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 437
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    return-void
.end method

.method public hideWaitingUiForPurchaseOrderAction()V
    .locals 0

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->hideWaitPanel()V

    .line 1448
    return-void
.end method

.method protected initClass(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 325
    return-void
.end method

.method protected isRadioNetworkAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 366
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 368
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 369
    .local v1, network:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1804
    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    const/16 v0, 0x202

    if-ne p1, v0, :cond_3

    .line 1806
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    .line 1809
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->invalidateAndRepost()V

    .line 1852
    :cond_1
    :goto_0
    return-void

    .line 1810
    :cond_2
    if-nez p2, :cond_1

    .line 1811
    invoke-direct {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->doPaymentSelected(I)V

    goto :goto_0

    .line 1813
    :cond_3
    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1f8

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1fa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1fc

    if-ne p1, v0, :cond_6

    .line 1817
    :cond_4
    if-ne p2, v1, :cond_5

    .line 1818
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setupAndRefreshCarrierBillingInstrument()V

    goto :goto_0

    .line 1819
    :cond_5
    if-nez p2, :cond_1

    .line 1820
    invoke-direct {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->doPaymentSelected(I)V

    goto :goto_0

    .line 1822
    :cond_6
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9

    .line 1823
    if-ne p2, v1, :cond_8

    .line 1824
    if-eqz p3, :cond_7

    .line 1825
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "carrier_billing_api_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1826
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "billing_address_snippet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1827
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "billing_address_country"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1828
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 1829
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierAddressSnippetActivity(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1833
    :cond_7
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setupAndRefreshCarrierBillingInstrument()V

    goto :goto_0

    .line 1834
    :cond_8
    if-nez p2, :cond_1

    .line 1835
    invoke-direct {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->doPaymentSelected(I)V

    goto :goto_0

    .line 1837
    :cond_9
    const/16 v0, 0x1fe

    if-ne p1, v0, :cond_b

    .line 1838
    if-ne p2, v1, :cond_a

    .line 1839
    if-eqz p3, :cond_1

    .line 1840
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "carrier_billing_password_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v2}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 1845
    :cond_a
    if-nez p2, :cond_1

    .line 1846
    invoke-direct {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->doPaymentSelected(I)V

    goto/16 :goto_0

    .line 1850
    :cond_b
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/billing/BasePurchaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onAssetLoaded()V
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 1533
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTitleBar(Lcom/android/vending/model/Asset;)V

    .line 1534
    return-void
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 1194
    iget-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1230
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1197
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/vending/billing/BasePurchaseActivity;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1203
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1211
    :pswitch_1
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->requestAssetAndPurchaseInfo()V

    goto :goto_0

    .line 1226
    :pswitch_2
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchaseOrderAction;->cancel()V

    .line 1227
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentType:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)V

    goto :goto_0

    .line 1208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v0, v1, :cond_0

    .line 350
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->tosUrlAccepted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectedInstrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTosErrorMessage()V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentDialog:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

    invoke-virtual {v0}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->show()V

    goto :goto_0

    .line 359
    :cond_3
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 212
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 214
    if-eqz p1, :cond_3

    .line 215
    const-string v4, "state"

    sget-object v5, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v5}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 216
    .local v3, value:I
    invoke-static {}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->values()[Lcom/android/vending/billing/BaseBuyPageActivity$State;

    move-result-object v4

    aget-object v1, v4, v3

    .line 217
    .local v1, state:Lcom/android/vending/billing/BaseBuyPageActivity$State;
    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    .line 218
    const-string v4, "tax_exclusive"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxExclusive:Ljava/lang/String;

    .line 219
    const-string v4, "tax_inclusive"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxInclusive:Ljava/lang/String;

    .line 221
    const-string v4, "tos_text"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    .line 222
    const-string v4, "tos_checkbox_text"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    .line 223
    const-string v4, "tos_dialog_leading_section"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogLeadingSection:Ljava/lang/String;

    .line 224
    const-string v4, "tos_dialog_title"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogTitle:Ljava/lang/String;

    .line 225
    const-string v4, "tos_url"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    .line 226
    const-string v4, "tos_accepted"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosAccepted:Z

    .line 228
    const-string v4, "carrier_logo_bitmap"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierLogoBitmap:Landroid/graphics/Bitmap;

    .line 229
    sget-object v4, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v1, v4, :cond_0

    .line 230
    sget-object v4, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->UNKNOWN:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    invoke-virtual {v4}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->ordinal()I

    move-result v2

    .line 231
    .local v2, unknown:I
    const-string v4, "instrument_type"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 232
    invoke-static {}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->values()[Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v4

    aget-object v4, v4, v3

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentType:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    .line 233
    const-string v4, "instrument_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentId:Ljava/lang/String;

    .line 240
    .end local v1           #state:Lcom/android/vending/billing/BaseBuyPageActivity$State;
    .end local v2           #unknown:I
    .end local v3           #value:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 241
    invoke-virtual {p0, v7}, Lcom/android/vending/billing/BaseBuyPageActivity;->setResult(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->finish()V

    .line 246
    :cond_1
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-static {v4, p0, v5, v6}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getInstance(Ljava/lang/String;Lcom/android/vending/BaseActivity;Landroid/os/Handler;Lcom/android/vending/api/RequestManager;)Lcom/android/vending/billing/PurchaseResponseForwarder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    .line 248
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getPurchasePostAction()Lcom/android/vending/billing/PurchasePostAction;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    .line 249
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getPurchaseOrderAction()Lcom/android/vending/billing/PurchaseOrderAction;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

    .line 250
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    .line 251
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4}, Lcom/android/vending/billing/PurchaseResponseForwarder;->getAssetAdapter()Lcom/android/vending/AssetItemAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    .line 252
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v4, v7}, Lcom/android/vending/AssetItemAdapter;->getAsset(I)Lcom/android/vending/model/Asset;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    .line 254
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getBillingDatabase()Lcom/android/vending/api/BillingDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 255
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v4}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 256
    new-instance v0, Lcom/android/vending/api/BillingParametersService;

    invoke-direct {v0}, Lcom/android/vending/api/BillingParametersService;-><init>()V

    .line 257
    .local v0, billingParametersService:Lcom/android/vending/api/BillingParametersService;
    invoke-virtual {v0, p0}, Lcom/android/vending/api/BillingParametersService;->getBillingParameter(Landroid/content/Context;)Lcom/android/vending/model/BillingParameter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    .line 260
    new-instance v4, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

    invoke-direct {v4, p0, p0}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;-><init>(Lcom/android/vending/billing/BaseBuyPageActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentDialog:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

    .line 262
    new-instance v4, Lcom/android/vending/billing/BaseBuyPageActivity$1;

    invoke-direct {v4, p0}, Lcom/android/vending/billing/BaseBuyPageActivity$1;-><init>(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    new-instance v5, Lcom/android/vending/billing/BaseBuyPageActivity$2;

    invoke-direct {v5, p0}, Lcom/android/vending/billing/BaseBuyPageActivity$2;-><init>(Lcom/android/vending/billing/BaseBuyPageActivity;)V

    const/4 v6, 0x0

    invoke-static {p0, v4, v5, v6}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mOrderErrorAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->initClass(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->isRadioNetworkAvailable()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRadioNetworkAvailable:Z

    .line 283
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-direct {p0, v4}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayFromStoredAsset(Lcom/android/vending/model/Asset;)V

    .line 287
    :cond_2
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4, p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->registerPostListener(Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 288
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4, p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->registerOrderListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V

    .line 289
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4, p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->registerOrderCarrierBillingListener(Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;)V

    .line 290
    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v4, p0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->registerImagesLoadedListener(Lcom/android/vending/AssetItemAdapter$OnImagesLoadedListener;)V

    .line 291
    return-void

    .line 236
    .end local v0           #billingParametersService:Lcom/android/vending/api/BillingParametersService;
    :cond_3
    sget-object v4, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onDestroy()V

    .line 331
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    invoke-virtual {v0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->unregister()V

    .line 332
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/vending/billing/PurchaseResponseForwarder;->removeInstance(Ljava/lang/String;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentDialog:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

    invoke-virtual {v0}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentDialog:Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;

    invoke-virtual {v0}, Lcom/android/vending/billing/BaseBuyPageActivity$SelectPaymentDialog;->dismiss()V

    .line 338
    :cond_1
    return-void
.end method

.method public onImageLoaded(ILcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 2
    .parameter "position"
    .parameter "imageUsage"
    .parameter "imageId"

    .prologue
    .line 1239
    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetAdapter:Lcom/android/vending/AssetItemAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/vending/AssetItemAdapter;->getBitmapAt(ILcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 1244
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1245
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 3
    .parameter "response"
    .parameter "usage"

    .prologue
    .line 1256
    invoke-virtual {p1}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1257
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->BILLING_ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v2, :cond_1

    .line 1258
    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierLogoBitmap:Landroid/graphics/Bitmap;

    .line 1259
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setCarrierLogo(Landroid/graphics/Bitmap;)V

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    sget-object v2, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p2, v2, :cond_0

    .line 1261
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1262
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;)V
    .locals 1
    .parameter "purchaseResponse"

    .prologue
    .line 1329
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;Lcom/android/vending/model/CarrierCredentialsResponse;)V

    .line 1330
    return-void
.end method

.method public onOrderResponse(Lcom/android/vending/model/PurchaseOrderResponse;Lcom/android/vending/model/CarrierCredentialsResponse;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f07011f

    const v6, 0x7f070037

    const v5, 0x7f07002b

    const/4 v4, -0x1

    .line 1334
    const-string v0, "%sstate: %s response: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mDestroyed:Z

    if-eqz v3, :cond_0

    const-string v3, "(destroyed) "

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1336
    iget-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1392
    :goto_1
    return-void

    .line 1334
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 1342
    :cond_1
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    .line 1347
    if-nez p1, :cond_4

    .line 1350
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/vending/model/CarrierCredentialsResponse;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1351
    invoke-virtual {p0, v6}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070133

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->invalidateAndRepost()V

    .line 1358
    invoke-direct {p0, v4}, Lcom/android/vending/billing/BaseBuyPageActivity;->doPaymentSelected(I)V

    goto :goto_1

    .line 1353
    :cond_3
    invoke-virtual {p2}, Lcom/android/vending/model/CarrierCredentialsResponse;->isPasswordInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1354
    invoke-virtual {p0, v6}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070130

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1362
    :cond_4
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseOrderResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    .line 1363
    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1389
    :pswitch_0
    invoke-direct {p0, v7, v4, v5}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayOrderErrorDialog(III)V

    goto :goto_1

    .line 1366
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onOrderSuccess(Lcom/android/vending/model/PurchaseOrderResponse;)V

    goto :goto_1

    .line 1373
    :pswitch_2
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->RETRY_PURCHASE_AFTER_AUTH:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    .line 1374
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_1

    .line 1378
    :pswitch_3
    const v0, 0x7f070120

    const v1, 0x7f070121

    const v2, 0x7f070122

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayOrderErrorDialog(III)V

    goto :goto_1

    .line 1382
    :pswitch_4
    invoke-direct {p0, v7, v4, v5}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayOrderErrorDialog(III)V

    goto :goto_1

    .line 1363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onOrderSuccess(Lcom/android/vending/model/PurchaseOrderResponse;)V
    .locals 6
    .parameter "purchaseResponse"

    .prologue
    const/4 v5, 0x0

    .line 1395
    invoke-virtual {p0, v5}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    .line 1396
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->setResult(I)V

    .line 1397
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setCarrierBillingShown()V

    .line 1403
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v3}, Lcom/android/vending/billing/PurchasePostAction;->getAssetService()Lcom/android/vending/api/AssetService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/vending/api/AssetService;->invalidateById(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseOrderResponse;->getPurchasedAsset()Lcom/android/vending/model/Asset;

    move-result-object v0

    .line 1413
    .local v0, purchasedAsset:Lcom/android/vending/model/Asset;
    if-nez v0, :cond_2

    .line 1414
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1420
    .local v2, refundTimeout:Ljava/lang/Long;
    :goto_0
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    if-eqz v3, :cond_0

    .line 1424
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    iget-object v4, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v4}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/vending/VendingApplication;->getPackageReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1426
    .local v1, referrer:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAsset:Lcom/android/vending/model/Asset;

    invoke-virtual {v3, v2, v1, v5}, Lcom/android/vending/model/Asset;->insertDownloadPendingIntoLocalDb(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    .end local v1           #referrer:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->finishOnOrderSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1430
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->finish()V

    .line 1432
    :cond_1
    return-void

    .line 1416
    .end local v2           #refundTimeout:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v0}, Lcom/android/vending/model/Asset;->getRefundTimeoutLong()Ljava/lang/Long;

    move-result-object v2

    .restart local v2       #refundTimeout:Ljava/lang/Long;
    goto :goto_0
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f07011f

    const v5, 0x7f07002b

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1285
    const-string v0, "%s{%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mDestroyed:Z

    if-eqz v2, :cond_0

    const-string v2, "(destroyed) "

    :goto_0
    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    iget-boolean v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 1322
    :goto_1
    :pswitch_0
    return-void

    .line 1285
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 1289
    :cond_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    .line 1291
    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1320
    invoke-direct {p0, v6, v3, v5}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayOrderErrorDialog(III)V

    goto :goto_1

    .line 1293
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->handleSuccessfulPost(Lcom/android/vending/model/PurchasePostResponse;)V

    goto :goto_1

    .line 1297
    :pswitch_2
    const-string v0, "Invalid checkout token"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_1

    .line 1302
    :pswitch_3
    const v0, 0x7f070120

    const v1, 0x7f070121

    const v2, 0x7f070122

    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayOrderErrorDialog(III)V

    goto :goto_1

    .line 1306
    :pswitch_4
    invoke-direct {p0, v6, v3, v5}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayOrderErrorDialog(III)V

    goto :goto_1

    .line 1291
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1538
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getMerchantField()Ljava/lang/String;

    move-result-object v0

    .line 1540
    .local v0, author:Ljava/lang/String;
    const/high16 v2, -0x4080

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/vending/billing/BaseBuyPageActivity;->displayTitleBar(Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;)V

    .line 1541
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onRestart()V

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    .line 317
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onResume()V

    .line 343
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v0}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 344
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1682
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1683
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1684
    const-string v0, "tax_exclusive"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxExclusive:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string v0, "tax_inclusive"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTaxInclusive:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v0, "assetid"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-ne v0, v1, :cond_0

    .line 1691
    const-string v0, "instrument_id"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentType:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->ordinal()I

    move-result v0

    .line 1693
    const-string v1, "instrument_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1698
    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/PurchaseResponseForwarder;->setPurchaseInfo(Lcom/android/vending/model/PurchaseInfo;)V

    .line 1699
    const-string v0, "carrier_logo_bitmap"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1700
    const-string v0, "tos_text"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const-string v0, "tos_checkbox_text"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosCheckboxText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    const-string v0, "tos_url"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v0, "tos_dialog_leading_section"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogLeadingSection:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v0, "tos_dialog_title"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosDialogTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    const-string v0, "tos_accepted"

    iget-boolean v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTosAccepted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1706
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 295
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onStart()V

    .line 302
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->hideWaitingUi()V

    .line 304
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseInfo:Lcom/android/vending/model/PurchaseInfo;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->setPurchaseInfo(Lcom/android/vending/model/PurchaseInfo;)V

    .line 309
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startSetupActionChain(Z)V

    .line 310
    return-void
.end method

.method protected perhapsSetupCarrierBilling()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1714
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getApiVersion()I

    move-result v0

    .line 1715
    .local v0, apiVersion:I
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v1}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 1717
    if-gt v0, v3, :cond_2

    .line 1718
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isTosNeedsReview()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getTosUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1722
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isAddressNeedsReview()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-direct {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->isBillingInformationEmpty(Lcom/android/vending/model/LocalBillingData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1724
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierTosAndAddressActivity(I)V

    :goto_0
    move v1, v3

    .line 1755
    :goto_1
    return v1

    .line 1726
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierTosActivity(I)V

    goto :goto_0

    .line 1729
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isAddressNeedsReview()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1730
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierBillingEditActivity()V

    move v1, v3

    .line 1731
    goto :goto_1

    .line 1733
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1734
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isTosNeedsReview()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getTosUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1735
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isAddressNeedsReview()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isSnippetEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1737
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierTosAndAddressSnippetActivity(I)V

    :goto_2
    move v1, v3

    .line 1741
    goto :goto_1

    .line 1739
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierTosActivity(I)V

    goto :goto_2

    .line 1742
    :cond_4
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isAddressNeedsReview()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1743
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->isSnippetEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1744
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierBillingEditActivity()V

    :goto_3
    move v1, v3

    .line 1750
    goto :goto_1

    .line 1746
    :cond_5
    iget-object v1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierAddressSnippetActivity(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1755
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)V
    .locals 1
    .parameter "instrumentId"
    .parameter "instrumentType"

    .prologue
    .line 1103
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method protected purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V
    .locals 21
    .parameter "instrumentId"
    .parameter "instrumentType"
    .parameter "carrierBillingPassword"

    .prologue
    .line 1109
    sget-object v5, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_1

    .line 1111
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->perhapsSetupCarrierBilling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1123
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/vending/model/CarrierProvisioningResponse;->isPasswordRequired()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->startCarrierPasswordActivity()V

    goto :goto_0

    .line 1130
    :cond_1
    const/4 v10, 0x0

    .line 1131
    .local v10, billingParameter:Lcom/android/vending/model/BillingParameter;
    sget-object v5, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_2

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    move-object v10, v0

    .line 1134
    :cond_2
    new-instance v4, Lcom/android/vending/model/PurchaseOrderRequest;

    invoke-virtual/range {p0 .. p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCheckoutAuthToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAssetId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mTransactionId:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/vending/model/PurchaseOrderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Lcom/android/vending/model/BillingParameter;)V

    .line 1136
    .local v4, request:Lcom/android/vending/model/PurchaseOrderRequest;
    invoke-direct/range {p0 .. p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->tosExplicitlyAccepted()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1137
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/vending/model/PurchaseOrderRequest;->setTosAccepted(Z)V

    .line 1139
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->updatePurchaseOrderForProductType(Lcom/android/vending/model/PurchaseOrderRequest;)V

    .line 1142
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setRiskHeaderInfo(Lcom/android/vending/model/PurchaseOrderRequest;)V

    .line 1143
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setSignatureHash(Lcom/android/vending/model/PurchaseOrderRequest;)V

    .line 1145
    sget-object v5, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_4

    .line 1146
    new-instance v16, Lcom/android/vending/api/CarrierService;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getRadioHttpClient()Lcom/android/vending/api/RadioHttpClient;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    move-object v6, v0

    move-object/from16 v0, v16

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/api/CarrierService;-><init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/model/BillingParameter;)V

    .line 1148
    .local v16, carrierService:Lcom/android/vending/api/CarrierService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCarrierBillingParameter:Lcom/android/vending/model/BillingParameter;

    move-object/from16 v19, v0

    move-object v12, v4

    move-object/from16 v13, p0

    move-object/from16 v20, p3

    invoke-virtual/range {v11 .. v20}, Lcom/android/vending/billing/PurchaseOrderAction;->executeCarrierBillingOrderRequest(Lcom/android/vending/model/PurchaseOrderRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionCarrierBillingListener;Lcom/android/vending/api/CarrierService;Lcom/android/vending/model/LocalBillingData;Lcom/android/vending/api/BillingDatabase;Lcom/android/vending/model/BillingParameter;Ljava/lang/String;)V

    .line 1154
    .end local v16           #carrierService:Lcom/android/vending/api/CarrierService;
    :goto_1
    sget-object v5, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V

    .line 1158
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentId:Ljava/lang/String;

    .line 1159
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/vending/billing/BaseBuyPageActivity;->mSavedInstrumentType:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    goto/16 :goto_0

    .line 1152
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mPurchaseOrderAction:Lcom/android/vending/billing/PurchaseOrderAction;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vending/billing/BaseBuyPageActivity;->mForwarder:Lcom/android/vending/billing/PurchaseResponseForwarder;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/billing/PurchaseOrderAction;->executeOrderRequest(Lcom/android/vending/model/PurchaseOrderRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchaseOrderAction$PurchaseOrderActionListener;)V

    goto :goto_1
.end method

.method protected setPolicyUrl(Lcom/android/vending/model/PurchaseInfo;Landroid/view/View;)V
    .locals 4
    .parameter "purchaseInfo"
    .parameter "rootView"

    .prologue
    .line 447
    const v2, 0x7f080084

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 449
    .local v1, refundPolicyView:Landroid/widget/TextView;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getRefundPolicyHtml()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo;->getRefundPolicyHtml()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, localizedPolicy:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v2}, Lcom/android/vending/model/ShoppingCart;->hasFooterMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCart:Lcom/android/vending/model/ShoppingCart;

    invoke-virtual {v3}, Lcom/android/vending/model/ShoppingCart;->getFooterMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 459
    return-void

    .line 452
    .end local v0           #localizedPolicy:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getDefaultRefundPolicy()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #localizedPolicy:Ljava/lang/String;
    goto :goto_0
.end method

.method protected setPurchasePostProductType(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1018
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 1019
    return-void
.end method

.method protected setSignatureHash(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 1095
    return-void
.end method

.method protected setSignatureHash(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 1092
    return-void
.end method

.method protected setState(Lcom/android/vending/billing/BaseBuyPageActivity$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    .line 397
    return-void
.end method

.method protected setupWidgets(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "rootView"
    .parameter "titleBarView"

    .prologue
    .line 406
    const v2, 0x7f08007e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    .line 407
    const v2, 0x7f080087

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    .line 408
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 409
    const v2, 0x7f08001e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mThumbnailView:Landroid/widget/ImageView;

    .line 410
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/billing/BaseBuyPageActivity;->getAccountNameView(Landroid/view/View;Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mAccountName:Landroid/widget/TextView;

    .line 412
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mSelectPaymentButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->setPolicyUrl(Lcom/android/vending/model/PurchaseInfo;Landroid/view/View;)V

    .line 418
    const v2, 0x7f080085

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    .local v0, buyPageFooter:Landroid/widget/TextView;
    const v2, 0x7f070100

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/vending/util/Util;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, footerText:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 422
    return-void
.end method

.method protected showWaitingUi()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 431
    return-void
.end method

.method protected startAddCreditCardActivity()V
    .locals 2

    .prologue
    .line 1569
    const-class v0, Lcom/android/vending/billing/AddCreditCardActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1570
    const/16 v1, 0x200

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1571
    return-void
.end method

.method protected startCarrierAddressSnippetActivity(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1621
    const-class v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1622
    const-string v1, "carrier_billing_api_version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1623
    const-string v1, "show_address"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1624
    const-string v1, "billing_address_snippet"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v1, "billing_address_country"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1626
    const-string v1, "billing_phone_number"

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCarrierBillingPhoneNumber(Lcom/android/vending/model/CarrierProvisioningResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1628
    const/16 v1, 0x1fc

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1629
    return-void
.end method

.method protected startCarrierBillingEditActivity()V
    .locals 3

    .prologue
    .line 1613
    const-class v0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1614
    const-string v1, "save_address"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1615
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->addAddressToIntent(Landroid/content/Intent;)V

    .line 1616
    const/16 v1, 0x1f8

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1617
    return-void
.end method

.method protected startCarrierPasswordActivity()V
    .locals 2

    .prologue
    .line 1579
    const-class v0, Lcom/android/vending/billing/CarrierPasswordActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1580
    const/16 v1, 0x1fe

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1581
    return-void
.end method

.method protected startCarrierTosActivity(I)V
    .locals 3
    .parameter

    .prologue
    .line 1586
    const-class v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1587
    const-string v1, "carrier_billing_api_version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1588
    const-string v1, "billing_phone_number"

    iget-object v2, p0, Lcom/android/vending/billing/BaseBuyPageActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v2}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->getCarrierBillingPhoneNumber(Lcom/android/vending/model/CarrierProvisioningResponse;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    const-string v1, "show_tos"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1591
    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1592
    return-void
.end method

.method protected startCarrierTosAndAddressActivity(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1595
    const-class v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1596
    const-string v1, "carrier_billing_api_version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1597
    const-string v1, "show_address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1598
    const-string v1, "show_tos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1599
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->addAddressToIntent(Landroid/content/Intent;)V

    .line 1600
    const/16 v1, 0x1f6

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1601
    return-void
.end method

.method protected startCarrierTosAndAddressSnippetActivity(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1604
    const-class v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1605
    const-string v1, "carrier_billing_api_version"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1606
    const-string v1, "show_address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1607
    const-string v1, "show_tos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1608
    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->addAddressSnippetToIntent(Landroid/content/Intent;)V

    .line 1609
    const/16 v1, 0x1fa

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1610
    return-void
.end method

.method protected startGermanDirectDebitActivity()V
    .locals 2

    .prologue
    .line 1574
    const-class v0, Lcom/android/vending/billing/GermanDirectDebitActivity;

    invoke-direct {p0, v0}, Lcom/android/vending/billing/BaseBuyPageActivity;->createStartActivityIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 1575
    const/16 v1, 0x202

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1576
    return-void
.end method

.method protected startSetupActionChain(Z)V
    .locals 3
    .parameter "firstrun"

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, initiated:Z
    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 377
    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 379
    :cond_0
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBuyPageActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 380
    :cond_1
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 382
    :cond_2
    return-void
.end method

.method protected updatePurchaseOrderForProductType(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 1028
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchaseOrderRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 1029
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 388
    return-void
.end method
