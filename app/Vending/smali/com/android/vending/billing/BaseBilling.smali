.class abstract Lcom/android/vending/billing/BaseBilling;
.super Lcom/android/vending/billing/BasePurchaseActivity;
.source "BaseBilling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/BaseBilling$1;,
        Lcom/android/vending/billing/BaseBilling$State;
    }
.end annotation


# instance fields
.field protected mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

.field protected mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

.field protected mNameView:Landroid/widget/TextView;

.field protected mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/vending/billing/BasePurchaseActivity;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method protected abstract addAccount(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method checkBillingInformation(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;Ljava/util/List;)V
    .locals 1
    .parameter "name"
    .parameter "phoneNumber"
    .parameter "addressProblems"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/addressinput/AddressProblems;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p4, errorList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 175
    invoke-static {p1}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/vending/model/InputField;->PERSON_NAME:Lcom/android/vending/model/InputField;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    invoke-static {p2}, Lcom/android/vending/util/Util;->isEmptyOrSpaces(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_PHONE:Lcom/android/vending/model/InputField;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v0}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 182
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_ADDRESS1:Lcom/android/vending/model/InputField;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v0}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 185
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_POSTAL_CODE:Lcom/android/vending/model/InputField;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_3
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v0}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 188
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_CITY:Lcom/android/vending/model/InputField;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_4
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v0}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 191
    sget-object v0, Lcom/android/vending/model/InputField;->ADDR_STATE:Lcom/android/vending/model/InputField;

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_5
    return-void
.end method

.method protected abstract handleBadBillingAddress(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/InputField;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract handleGoodBillingAddress()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const-string v2, "billing_state"

    sget-object v3, Lcom/android/vending/billing/BaseBilling$State;->INITIAL:Lcom/android/vending/billing/BaseBilling$State;

    invoke-virtual {v3}, Lcom/android/vending/billing/BaseBilling$State;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 72
    .local v1, value:I
    invoke-static {}, Lcom/android/vending/billing/BaseBilling$State;->values()[Lcom/android/vending/billing/BaseBilling$State;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/vending/billing/BaseBilling;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    .line 77
    .end local v1           #value:I
    :goto_0
    new-instance v2, Lcom/android/vending/billing/PurchasePostAction;

    iget-object v3, p0, Lcom/android/vending/billing/BaseBilling;->mRequestManager:Lcom/android/vending/api/RequestManager;

    invoke-direct {v2, p0, v3}, Lcom/android/vending/billing/PurchasePostAction;-><init>(Lcom/android/vending/BaseActivity;Lcom/android/vending/api/RequestManager;)V

    iput-object v2, p0, Lcom/android/vending/billing/BaseBilling;->mPurchasePostAction:Lcom/android/vending/billing/PurchasePostAction;

    .line 79
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBilling;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, saving:Ljava/lang/String;
    new-instance v2, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-direct {v2, p0, v0}, Lcom/android/vending/BaseActivity$ProgressDialogAccessor;-><init>(Lcom/android/vending/BaseActivity;Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/vending/billing/BaseBilling;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    .line 81
    iget-object v2, p0, Lcom/android/vending/billing/BaseBilling;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/BaseBilling;->registerDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 82
    return-void

    .line 74
    .end local v0           #saving:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/vending/billing/BaseBilling$State;->INITIAL:Lcom/android/vending/billing/BaseBilling$State;

    iput-object v2, p0, Lcom/android/vending/billing/BaseBilling;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    goto :goto_0
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 9
    .parameter "postResponse"

    .prologue
    const/4 v8, 0x1

    .line 114
    const-string v4, "%sPostResponse = {%s}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/vending/billing/BaseBilling;->mDestroyed:Z

    if-eqz v7, :cond_1

    const-string v7, "(destroyed) "

    :goto_0
    aput-object v7, v5, v6

    aput-object p1, v5, v8

    invoke-static {v4, v5}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-boolean v4, p0, Lcom/android/vending/billing/BaseBilling;->mDestroyed:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_2

    .line 149
    :cond_0
    :goto_1
    return-void

    .line 114
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v2

    .line 120
    .local v2, purchaseResult:Lcom/android/vending/model/PurchaseResult$ResultCode;
    iget-object v4, p0, Lcom/android/vending/billing/BaseBilling;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/BaseBilling;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 121
    sget-object v4, Lcom/android/vending/billing/BaseBilling$State;->INITIAL:Lcom/android/vending/billing/BaseBilling$State;

    iput-object v4, p0, Lcom/android/vending/billing/BaseBilling;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    .line 123
    sget-object v4, Lcom/android/vending/billing/BaseBilling$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v2}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 145
    const v4, 0x7f070037

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/BaseBilling;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, title:Ljava/lang/String;
    const v4, 0x7f070039

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/BaseBilling;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0, v3, v1, v8}, Lcom/android/vending/billing/BaseBilling;->displayAlertMessage(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 125
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBilling;->handleGoodBillingAddress()V

    goto :goto_1

    .line 129
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseInfo()Lcom/android/vending/model/PurchaseInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/PurchaseInfo;->getErrorInputFields()Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, errors:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBilling;->handleBadBillingAddress(Ljava/util/List;)V

    goto :goto_1

    .line 134
    .end local v0           #errors:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/InputField;>;"
    :pswitch_2
    const-string v4, "Invalid checkout token"

    invoke-static {v4}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 135
    sget-object v4, Lcom/android/vending/billing/BaseBilling;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBilling;->getPreferredAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/vending/billing/BaseBilling;->invalidateAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPurchasePostError()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/vending/billing/BaseBilling;->mAccessor:Lcom/android/vending/BaseActivity$ProgressDialogAccessor;

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/BaseBilling;->hideDialog(Lcom/android/vending/controller/DialogAccessor;)V

    .line 154
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    const-string v0, "billing_state"

    iget-object v1, p0, Lcom/android/vending/billing/BaseBilling;->mCurrentState:Lcom/android/vending/billing/BaseBilling$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBilling$State;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    return-void
.end method

.method protected startSetupActionChain(Z)V
    .locals 3
    .parameter "firstrun"

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, initiated:Z
    sget-object v1, Lcom/android/vending/billing/BaseBilling;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBilling;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/BaseBilling;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 89
    sget-object v1, Lcom/android/vending/billing/BaseBilling;->sCheckoutService:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBilling;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/BaseBilling;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 91
    :cond_0
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BaseBilling;->haveAuthToken(Lcom/android/vending/BaseActivity$AuthService;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 92
    :cond_1
    sget-object v1, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    invoke-virtual {p0}, Lcom/android/vending/billing/BaseBilling;->getPreferredAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/vending/billing/BaseBilling;->initiateGetAuthToken(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 94
    :cond_2
    return-void
.end method
