.class public Lcom/android/vending/billing/CarrierBillingAddressEditActivity;
.super Lcom/android/vending/billing/BillingAddressEditActivity;
.source "CarrierBillingAddressEditActivity.java"


# instance fields
.field protected mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

.field protected mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

.field protected mLocalBillingData:Lcom/android/vending/model/LocalBillingData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected addAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "assetId"
    .parameter "transactionId"

    .prologue
    .line 37
    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    iput-object v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    .line 38
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->createCarrierBillingInstrument()Lcom/android/vending/model/CarrierBillingInstrument;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    .line 39
    new-instance v0, Lcom/android/vending/model/PurchasePostRequest;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->getCheckoutAuthToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 41
    .local v0, request:Lcom/android/vending/model/PurchasePostRequest;
    iget-boolean v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mIsInAppPurchase:Z

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mVersionCode:I

    iget-object v3, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/model/PurchasePostRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 44
    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v1, v0, p0, p0}, Lcom/android/vending/billing/PurchasePostAction;->executePostRequest(Lcom/android/vending/model/PurchasePostRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 47
    iget-object v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 48
    return-void
.end method

.method protected createCarrierBillingInstrument()Lcom/android/vending/model/CarrierBillingInstrument;
    .locals 6

    .prologue
    .line 51
    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v3

    .line 52
    .local v3, provisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;
    new-instance v1, Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-direct {v1}, Lcom/android/vending/model/CarrierBillingInstrument;-><init>()V

    .line 53
    .local v1, instrument:Lcom/android/vending/model/CarrierBillingInstrument;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getSimIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setAccountType(Ljava/lang/String;)V

    .line 56
    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mAddressWidget:Lcom/android/i18n/addressinput/AddressWidget;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 57
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setAddress1(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setAddress2(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setCity(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setState(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setPostalCode(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setCountry(Ljava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V

    .line 68
    :cond_1
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberCurrency(Ljava/lang/String;)V

    .line 69
    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberName(Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mPhoneNumberView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 73
    .local v2, phoneNumber:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTransactionLimit()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/vending/model/CarrierBillingInstrument;->setTransactionLimit(J)V

    .line 75
    return-object v1

    .line 70
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mPhoneNumberEditView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method protected handleGoodBillingAddress()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingDatabase;->saveServerPost(Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 81
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->setResult(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->finish()V

    .line 83
    return-void
.end method

.method public bridge synthetic onClick(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/vending/billing/BillingAddressEditActivity;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/android/vending/billing/BillingAddressEditActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getBillingDatabase()Lcom/android/vending/api/BillingDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 32
    iget-object v0, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v0}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 33
    return-void
.end method

.method public bridge synthetic onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/billing/BillingAddressEditActivity;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/android/vending/billing/BillingAddressEditActivity;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    return-void
.end method

.method public bridge synthetic onPurchasePostError()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/android/vending/billing/BillingAddressEditActivity;->onPurchasePostError()V

    return-void
.end method

.method public bridge synthetic updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/android/vending/billing/BillingAddressEditActivity;->updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V

    return-void
.end method
