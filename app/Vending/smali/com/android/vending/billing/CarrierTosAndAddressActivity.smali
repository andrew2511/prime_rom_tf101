.class public Lcom/android/vending/billing/CarrierTosAndAddressActivity;
.super Lcom/android/vending/billing/BaseBilling;
.source "CarrierTosAndAddressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;,
        Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;
    }
.end annotation


# instance fields
.field private mAddressData:Lcom/android/i18n/addressinput/AddressData;

.field private mAddressSnippet:Ljava/lang/String;

.field private mAddressView:Landroid/widget/TextView;

.field private mApiVersion:I

.field protected mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

.field protected mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

.field private mCarrierService:Lcom/android/vending/api/CarrierService;

.field private mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

.field private mDialog:Landroid/app/Dialog;

.field private mEditButton:Landroid/widget/ImageButton;

.field private mEditedAddress:Landroid/content/Intent;

.field protected mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

.field private mPhoneNumber:Ljava/lang/String;

.field private mPhoneNumberView:Landroid/widget/TextView;

.field protected mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

.field private mShowAddress:Ljava/lang/Boolean;

.field private mShowTos:Ljava/lang/Boolean;

.field private mTosWebViewclient:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

.field private mTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBilling;-><init>()V

    .line 673
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCarrierTosVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Lcom/android/vending/api/CarrierService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierService:Lcom/android/vending/api/CarrierService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finishGetProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCarrierTosUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/vending/billing/CarrierTosAndAddressActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private changeAddressSectionVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    const v1, 0x7f0800a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v1, 0x7f0800a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    const v1, 0x7f0800a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const v1, 0x7f0800a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void
.end method

.method private changeTosSectionVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f080091

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0800a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    return-void
.end method

.method private createCarrierBillingInstrument()Lcom/android/vending/model/CarrierBillingInstrument;
    .locals 3

    .prologue
    .line 744
    iget v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 745
    const-string v1, "Tried to create carrier billing instrument without required field: EncryptedSubscriberInfo"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    .line 748
    const/4 v1, 0x0

    .line 770
    :goto_0
    return-object v1

    .line 751
    :cond_0
    new-instance v0, Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-direct {v0}, Lcom/android/vending/model/CarrierBillingInstrument;-><init>()V

    .line 752
    .local v0, instrument:Lcom/android/vending/model/CarrierBillingInstrument;
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getSimIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setInstrumentKey(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setAccountType(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberName(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setAddress1(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setAddress2(Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setCity(Ljava/lang/String;)V

    .line 760
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setCountry(Ljava/lang/String;)V

    .line 761
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setPostalCode(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setState(Ljava/lang/String;)V

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 765
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setEncryptedSubscriberInfo(Lcom/android/vending/model/EncryptedSubscriberInfo;)V

    .line 767
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getSubscriberCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberCurrency(Ljava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/CarrierBillingInstrument;->setSubscriberIdentifier(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getTransactionLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/model/CarrierBillingInstrument;->setTransactionLimit(J)V

    move-object v1, v0

    .line 770
    goto/16 :goto_0
.end method

.method private displayErrorAlertAndFinish()V
    .locals 4

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 665
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 666
    return-void
.end method

.method private fetchProvisioning()V
    .locals 3

    .prologue
    .line 439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 441
    .local v0, carrierServiceHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;

    const-string v2, "GetProvisioningThread"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$1;->start()V

    .line 460
    return-void
.end method

.method private fillFullAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .parameter "line1"
    .parameter "line2"
    .parameter "city"
    .parameter "state"
    .parameter "zipCode"
    .parameter "country"
    .parameter "carrierName"

    .prologue
    .line 353
    const v4, 0x7f07012c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p8, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, description:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 355
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    new-instance v4, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v4}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v4, p1}, Lcom/android/i18n/addressinput/AddressData$Builder;->setRecipient(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine1(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAddressLine2(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLocality(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p5}, Lcom/android/i18n/addressinput/AddressData$Builder;->setAdminArea(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p6}, Lcom/android/i18n/addressinput/AddressData$Builder;->setPostalCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4, p7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    .line 369
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 372
    :cond_0
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/i18n/addressinput/AddressWidget;->getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 375
    .local v2, formattedAddress:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    const-string v5, "\n"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .end local v2           #formattedAddress:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 382
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :goto_1
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f0800a7

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 389
    .local v1, editView:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    return-void

    .line 377
    .end local v1           #editView:Landroid/widget/TextView;
    :cond_1
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 385
    :cond_2
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private fillSnippetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "snippet"
    .parameter "country"
    .parameter "carrierName"

    .prologue
    const/4 v5, 0x0

    .line 334
    const v3, 0x7f07012d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, description:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f0800a3

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 338
    .local v1, descriptionView:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    invoke-virtual {v3, p2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    .line 341
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressSnippet:Ljava/lang/String;

    .line 342
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressSnippet:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v4, 0x7f0800a7

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 345
    .local v2, editView:Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    return-void
.end method

.method private finishGetProvisioning(Lcom/android/vending/model/CarrierProvisioningResponse;)V
    .locals 3
    .parameter "provisioningData"

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    .line 405
    :cond_0
    iput-object p1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    .line 407
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 416
    .local v0, displaySnippetData:Landroid/content/Intent;
    const-string v1, "carrier_billing_api_version"

    iget v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string v1, "billing_address_snippet"

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getAddressSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "billing_address_country"

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v2}, Lcom/android/vending/model/CarrierProvisioningResponse;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(ILandroid/content/Intent;)V

    .line 422
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto :goto_0

    .line 426
    .end local v0           #displaySnippetData:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayErrorAlertAndFinish()V

    goto :goto_0

    .line 431
    :cond_3
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    .line 432
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    .line 433
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    goto :goto_0
.end method

.method private getCarrierTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getTosUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCarrierTosVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getTosVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideAddressSection()V
    .locals 1

    .prologue
    .line 261
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeAddressSectionVisibility(I)V

    .line 262
    return-void
.end method

.method private hideTosSection()V
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeTosSectionVisibility(I)V

    .line 278
    return-void
.end method

.method private initDialogViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 177
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getCarrierName()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, carrierName:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->makeDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    .line 179
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 181
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f08009e

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 182
    .local v0, acceptButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f08009f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f0800a0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 186
    .local v3, webView:Landroid/webkit/WebView;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f0800a1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f08009c

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTosWebViewclient:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    .line 189
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTosWebViewclient:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 190
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 192
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f08006d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f080091

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, view:Landroid/view/View;
    const v4, 0x7f0800a5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressView:Landroid/widget/TextView;

    .line 198
    const v4, 0x7f0800a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumberView:Landroid/widget/TextView;

    .line 200
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private makeDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 8
    .parameter "carrierName"

    .prologue
    const/4 v7, 0x1

    .line 208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103000c

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 211
    .local v1, lightTheme:Landroid/view/ContextThemeWrapper;
    const v4, 0x7f04002b

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, v:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 214
    const v4, 0x7f070128

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 216
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method private setupViewFromIntent(Landroid/content/Intent;)V
    .locals 11
    .parameter "intent"

    .prologue
    .line 285
    const-string v0, "carrier_billing_api_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    .line 286
    const-string v0, "billing_phone_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    .line 288
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->showTosSection()V

    .line 307
    :goto_1
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->showAddressSection()V

    .line 314
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalBillingData;->getCarrierName()Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, carrierName:Ljava/lang/String;
    iget v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 316
    const-string v0, "billing_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, name:Ljava/lang/String;
    const-string v0, "billing_address_line1"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, line1:Ljava/lang/String;
    const-string v0, "billing_address_line2"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 319
    .local v3, line2:Ljava/lang/String;
    const-string v0, "billing_address_city"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, city:Ljava/lang/String;
    const-string v0, "billing_address_state"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, state:Ljava/lang/String;
    const-string v0, "billing_address_zip_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, zipCode:Ljava/lang/String;
    const-string v0, "billing_address_country"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, country:Ljava/lang/String;
    move-object v0, p0

    .line 324
    invoke-direct/range {v0 .. v8}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fillFullAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #line1:Ljava/lang/String;
    .end local v3           #line2:Ljava/lang/String;
    .end local v4           #city:Ljava/lang/String;
    .end local v5           #state:Ljava/lang/String;
    .end local v6           #zipCode:Ljava/lang/String;
    .end local v7           #country:Ljava/lang/String;
    .end local v8           #carrierName:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f080091

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 299
    :cond_2
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->hideTosSection()V

    .line 302
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 304
    .local v9, acceptButton:Landroid/widget/Button;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v1, 0x7f0800a1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 310
    .end local v9           #acceptButton:Landroid/widget/Button;
    :cond_3
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->hideAddressSection()V

    goto :goto_2

    .line 325
    .restart local v8       #carrierName:Ljava/lang/String;
    :cond_4
    iget v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 326
    const-string v0, "billing_address_snippet"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, addressSnippet:Ljava/lang/String;
    const-string v0, "billing_address_country"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 329
    .restart local v7       #country:Ljava/lang/String;
    invoke-direct {p0, v10, v7, v8}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fillSnippetAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private showAddressSection()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeAddressSectionVisibility(I)V

    .line 259
    return-void
.end method

.method private showTosSection()V
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->changeTosSectionVisibility(I)V

    .line 275
    return-void
.end method

.method private startCarrierBillingEditActivity(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.EDIT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    const-class v0, Lcom/android/vending/billing/CarrierBillingAddressEditActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 541
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v0

    .line 543
    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v2

    .line 544
    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    .line 545
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v4

    .line 546
    iget-object v5, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v5

    .line 547
    iget-object v6, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v6}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v6

    .line 548
    iget-object v7, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v7}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v7

    .line 550
    const-string v8, "billing_name"

    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v0, "billing_address_line1"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const-string v0, "billing_address_line2"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    const-string v0, "billing_address_city"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v0, "billing_address_state"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v0, "billing_address_zip_code"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v0, "billing_address_country"

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    :cond_0
    const-string v0, "billing_phone_number"

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    if-eqz p1, :cond_2

    .line 564
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 565
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/InputField;

    .line 566
    invoke-virtual {v0}, Lcom/android/vending/model/InputField;->toProtoInputField()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    :cond_1
    const-string v0, "billing_errors"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 571
    :cond_2
    const/16 v0, 0x1f8

    invoke-virtual {p0, v1, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 572
    return-void
.end method

.method private updateAcceptedTosVersion()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getTosVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingDatabase;->setTosAcceptedVersion(Ljava/lang/String;)V

    .line 595
    return-void
.end method


# virtual methods
.method protected addAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "assetId"
    .parameter "transactionId"

    .prologue
    .line 722
    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    .line 723
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->createCarrierBillingInstrument()Lcom/android/vending/model/CarrierBillingInstrument;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    .line 724
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    if-nez v1, :cond_0

    .line 739
    :goto_0
    return-void

    .line 730
    :cond_0
    new-instance v0, Lcom/android/vending/model/PurchasePostRequest;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getCheckoutAuthToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/android/vending/model/PurchasePostRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 732
    .local v0, request:Lcom/android/vending/model/PurchasePostRequest;
    iget-boolean v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mIsInAppPurchase:Z

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mVersionCode:I

    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/model/PurchasePostRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 735
    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    invoke-virtual {v1, v0, p0, p0}, Lcom/android/vending/billing/PurchasePostAction;->executePostRequest(Lcom/android/vending/model/PurchasePostRequest;Lcom/android/vending/BaseActivity;Lcom/android/vending/billing/PurchasePostAction$PurchasePostActionListener;)V

    .line 738
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->displayDialog(Lcom/android/vending/controller/DialogAccessor;)V

    goto :goto_0
.end method

.method protected createViewOnStart()Landroid/view/View;
    .locals 3

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->initDialogViews()V

    .line 163
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 165
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method getCarrierTosWebViewClient(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;
    .locals 1
    .parameter "progress"
    .parameter "tosDisplayView"
    .parameter "acceptButton"

    .prologue
    .line 615
    new-instance v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosWebViewClient;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V

    return-object v0
.end method

.method protected handleBadBillingAddress(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, errors:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    .line 718
    return-void
.end method

.method protected handleGoodBillingAddress()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierInstrument:Lcom/android/vending/model/CarrierBillingInstrument;

    invoke-virtual {v0, v1}, Lcom/android/vending/api/BillingDatabase;->saveServerPost(Lcom/android/vending/model/CarrierBillingInstrument;)V

    .line 710
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->updateAcceptedTosVersion()V

    .line 711
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 712
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    .line 713
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 576
    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_2

    .line 577
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 578
    invoke-direct {p0, p3}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setupViewFromIntent(Landroid/content/Intent;)V

    .line 581
    iput-object p3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    if-nez p2, :cond_0

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 584
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto :goto_0

    .line 588
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/billing/BaseBilling;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "account"
    .parameter "authToken"

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/vending/billing/BaseBilling;->onAuthTokenComplete(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 233
    sget-object v0, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getPreferredAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    if-ne v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    invoke-virtual {v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;->start()V

    goto :goto_0
.end method

.method onClick(I)V
    .locals 5
    .parameter "viewId"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v1}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    .line 475
    sparse-switch p1, :sswitch_data_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 477
    :sswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    goto :goto_0

    .line 481
    :sswitch_1
    iget v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_4

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v0, errorList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mPhoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAddressData:Lcom/android/i18n/addressinput/AddressData;

    new-instance v4, Lcom/android/vending/billing/AddressMetadataCacheManager;

    invoke-direct {v4}, Lcom/android/vending/billing/AddressMetadataCacheManager;-><init>()V

    invoke-static {v3, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressProblems(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/ClientCacheManager;)Lcom/android/i18n/addressinput/AddressProblems;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->checkBillingInformation(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V

    .line 489
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    invoke-direct {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startCarrierBillingEditActivity(Ljava/util/List;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 496
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->updateAcceptedTosVersion()V

    .line 498
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto :goto_0

    .line 502
    .end local v0           #errorList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    :cond_4
    iget v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mApiVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 505
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 509
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mProvisioningData:Lcom/android/vending/model/CarrierProvisioningResponse;

    invoke-virtual {v1}, Lcom/android/vending/model/CarrierProvisioningResponse;->getEncryptedSubscriberInfo()Lcom/android/vending/model/EncryptedSubscriberInfo;

    move-result-object v1

    if-nez v1, :cond_5

    .line 510
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fetchProvisioning()V

    goto :goto_0

    .line 512
    :cond_5
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 517
    :cond_6
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->addAccount(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    :cond_7
    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->fetchProvisioning()V

    .line 524
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->updateAcceptedTosVersion()V

    goto/16 :goto_0

    .line 531
    :sswitch_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 532
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    goto/16 :goto_0

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08006d -> :sswitch_0
        0x7f08009e -> :sswitch_1
        0x7f08009f -> :sswitch_2
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->onClick(I)V

    .line 470
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getBillingDatabase()Lcom/android/vending/api/BillingDatabase;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    .line 113
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mBillingDatabase:Lcom/android/vending/api/BillingDatabase;

    invoke-virtual {v4}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 114
    new-instance v0, Lcom/android/vending/api/BillingParametersService;

    invoke-direct {v0}, Lcom/android/vending/api/BillingParametersService;-><init>()V

    .line 115
    .local v0, billingParametersService:Lcom/android/vending/api/BillingParametersService;
    new-instance v4, Lcom/android/vending/api/CarrierService;

    invoke-static {}, Lcom/android/vending/ServiceLocator;->getRadioHttpClient()Lcom/android/vending/api/RadioHttpClient;

    move-result-object v5

    invoke-virtual {v0, p0}, Lcom/android/vending/api/BillingParametersService;->getBillingParameter(Landroid/content/Context;)Lcom/android/vending/model/BillingParameter;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/vending/api/CarrierService;-><init>(Lcom/android/vending/api/RadioHttpClient;Lcom/android/vending/model/BillingParameter;)V

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierService:Lcom/android/vending/api/CarrierService;

    .line 121
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 122
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 123
    .local v2, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "show_address"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    .line 129
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowAddress:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const-string v4, "transaction_id"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mTransactionId:Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mAssetId:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 133
    const-string v4, "asset id is null"

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0, v7}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setResult(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    .line 138
    :cond_0
    const-string v4, "show_tos"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mShowTos:Ljava/lang/Boolean;

    .line 140
    if-eqz p1, :cond_1

    .line 141
    const-string v4, "edited_address"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    .line 143
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 603
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 774
    packed-switch p2, :pswitch_data_0

    .line 788
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 783
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->finish()V

    :cond_0
    move v0, v1

    .line 786
    goto :goto_0

    .line 774
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    return-void
.end method

.method public bridge synthetic onPurchasePostError()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onPurchasePostError()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBilling;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "edited_address"

    iget-object v1, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mEditedAddress:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 174
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onStart()V

    .line 148
    new-instance v0, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    invoke-direct {v0, p0, p0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;-><init>(Lcom/android/vending/billing/CarrierTosAndAddressActivity;Lcom/android/vending/BaseActivity;)V

    iput-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    .line 149
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mCarrierTosLoadAction:Lcom/android/vending/billing/CarrierTosAndAddressActivity$CarrierTosLoadAction;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->setAutoStartAction(Lcom/android/vending/BaseActivity$BaseAction;)V

    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->startSetupActionChain(Z)V

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/vending/billing/BaseBilling;->onStop()V

    .line 156
    iget-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierTosAndAddressActivity;->mDialog:Landroid/app/Dialog;

    .line 158
    return-void
.end method
