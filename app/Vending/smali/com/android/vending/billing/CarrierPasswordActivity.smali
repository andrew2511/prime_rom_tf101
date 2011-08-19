.class public Lcom/android/vending/billing/CarrierPasswordActivity;
.super Lcom/android/vending/billing/BasePurchaseActivity;
.source "CarrierPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBuyButton:Landroid/widget/Button;

.field private mCancelButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field protected mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

.field private mPasswordEditView:Landroid/widget/EditText;

.field private mPasswordForgotView:Landroid/widget/TextView;

.field private mPasswordPromptView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/vending/billing/BasePurchaseActivity;-><init>()V

    return-void
.end method

.method private initDialogViews()V
    .locals 6

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->makeDialog()Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    .line 49
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 51
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f080096

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, view:Landroid/view/View;
    const v4, 0x7f080098

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordPromptView:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordForgotView:Landroid/widget/TextView;

    .line 54
    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordEditView:Landroid/widget/EditText;

    .line 55
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f08009b

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mBuyButton:Landroid/widget/Button;

    .line 56
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    const v5, 0x7f080054

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mCancelButton:Landroid/widget/Button;

    .line 57
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mBuyButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/CarrierProvisioningResponse;->getPasswordPrompt()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, passwordPrompt:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordPromptView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    invoke-virtual {v4}, Lcom/android/vending/model/LocalBillingData;->getProvisioningData()Lcom/android/vending/model/CarrierProvisioningResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/CarrierProvisioningResponse;->getPasswordForgotUrl()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, passwordForgotUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordForgotView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 69
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<a href=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f070131

    invoke-virtual {p0, v5}, Lcom/android/vending/billing/CarrierPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</a>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, passwordForgotHtml:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordForgotView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v4, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordForgotView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method private makeDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103000c

    invoke-direct {v1, p0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 82
    .local v1, lightTheme:Landroid/view/ContextThemeWrapper;
    const v4, 0x7f040029

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 83
    .local v3, v:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v4, 0x7f07012f

    invoke-virtual {p0, v4}, Lcom/android/vending/billing/CarrierPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 87
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mBuyButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mPasswordEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, enteredPassword:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const v2, 0x7f070132

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/CarrierPasswordActivity;->displayToast(I)V

    .line 149
    .end local v0           #enteredPassword:Ljava/lang/String;
    :goto_0
    return-void

    .line 139
    .restart local v0       #enteredPassword:Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v1, passwordIntent:Landroid/content/Intent;
    const-string v2, "carrier_billing_password_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/vending/billing/CarrierPasswordActivity;->setResult(ILandroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->finish()V

    goto :goto_0

    .line 143
    .end local v0           #enteredPassword:Ljava/lang/String;
    .end local v1           #passwordIntent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_2

    .line 144
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/CarrierPasswordActivity;->setResult(I)V

    .line 145
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->finish()V

    goto :goto_0

    .line 147
    :cond_2
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 95
    invoke-super {p0, p1}, Lcom/android/vending/billing/BasePurchaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getBillingDatabase()Lcom/android/vending/api/BillingDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/api/BillingDatabase;->getLocalBillingData()Lcom/android/vending/model/LocalBillingData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mLocalBillingData:Lcom/android/vending/model/LocalBillingData;

    .line 102
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 103
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 104
    .local v0, layoutParams:Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 106
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 109
    iget-object v2, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mAssetId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 110
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/CarrierPasswordActivity;->setResult(I)V

    .line 111
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->finish()V

    .line 113
    :cond_0
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 152
    packed-switch p2, :pswitch_data_0

    .line 164
    :goto_0
    return v0

    .line 160
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/CarrierPasswordActivity;->setResult(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->finish()V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onStart()V

    .line 118
    invoke-direct {p0}, Lcom/android/vending/billing/CarrierPasswordActivity;->initDialogViews()V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/vending/billing/BasePurchaseActivity;->onStop()V

    .line 124
    iget-object v0, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/CarrierPasswordActivity;->mDialog:Landroid/app/Dialog;

    .line 126
    return-void
.end method
