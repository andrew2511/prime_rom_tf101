.class public Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupOutgoingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mRequireLoginSettingsView:Landroid/view/View;

.field private mRequireLoginSettingsView2:Landroid/view/View;

.field private mRequireLoginView:Landroid/widget/CheckBox;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    return-void
.end method

.method private getPortFromSecurityType()I
    .locals 3

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object p0, p0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 333
    .local v1, securityType:I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/16 v2, 0x1d1

    move v0, v2

    .line 334
    .local v0, port:I
    :goto_0
    return v0

    .line 333
    .end local v0           #port:I
    :cond_0
    const/16 v2, 0x24b

    move v0, v2

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 257
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-eqz v6, :cond_0

    .line 291
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v4

    .line 260
    .local v4, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_2

    .line 261
    iget-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 262
    .local v5, username:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 263
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    :cond_1
    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 268
    .local v2, password:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 269
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .end local v2           #password:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    :cond_2
    iget v6, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v0, v6, -0x5

    .line 274
    .local v0, flags:I
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 276
    iget-object v1, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 277
    .local v1, hostname:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 278
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_3
    iget v3, v4, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 282
    .local v3, port:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    .line 283
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 288
    :goto_1
    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoadedSendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 289
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 290
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    goto :goto_0

    .line 285
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->updatePortFromSecurityType()V

    goto :goto_1
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 339
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 340
    return-void
.end method

.method private validateFields()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 297
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    if-nez v2, :cond_0

    .line 317
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v4

    .line 301
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v4

    .line 306
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_2
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->enableNextButton(Z)V

    .line 316
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_3
    move v0, v3

    .line 298
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_4
    move v0, v3

    .line 302
    goto :goto_2

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 368
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 369
    .local v8, securityType:I
    const/4 v2, 0x0

    .line 370
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 375
    .local v5, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 377
    .local v4, port:I
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 324
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView:Landroid/view/View;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 329
    return-void

    :cond_1
    move v1, v3

    .line 324
    goto :goto_0

    :cond_2
    move v1, v3

    .line 326
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    .line 90
    :cond_0
    const-string v0, "smtp"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mBaseScheme:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 99
    iget-boolean v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSettingsMode:Z

    if-eqz v6, :cond_0

    const v6, 0x7f040007

    move v1, v6

    .line 103
    .local v1, layoutId:I
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p1, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0f0023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 107
    const v6, 0x7f0f001e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 108
    const v6, 0x7f0f0024

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    .line 109
    const v6, 0x7f0f002a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    .line 110
    const v6, 0x7f0f0045

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    .line 111
    const v6, 0x7f0f0046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView:Landroid/view/View;

    .line 112
    const v6, 0x7f0f0047

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginSettingsView2:Landroid/view/View;

    .line 113
    const v6, 0x7f0f002b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 114
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mRequireLoginView:Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    const/4 v6, 0x5

    new-array v2, v6, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v6, 0x0

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800da

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800dc

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800db

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800de

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    const/4 v6, 0x4

    new-instance v7, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f0800dd

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v7, v2, v6

    .line 130
    .local v2, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v3, v0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 132
    .local v3, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v6, 0x1090009

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 133
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 137
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;)V

    .line 154
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    const-string v7, "0123456789"

    invoke-static {v7}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 163
    invoke-virtual {p0, v5}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 165
    return-object v5

    .line 99
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #layoutId:I
    .end local v2           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v3           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v4           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v5           #view:Landroid/view/View;
    .restart local p1
    :cond_0
    const v6, 0x7f040014

    move v1, v6

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 230
    return-void
.end method

.method public onNext()V
    .locals 11

    .prologue
    .line 393
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 394
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 396
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 397
    .local v6, userName:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, userPassword:Ljava/lang/String;
    invoke-virtual {v3, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, serverAddress:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 408
    .local v5, serverPort:I
    :goto_0
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v8, v8, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 409
    .local v2, securityType:I
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v8, v4, v5, v2}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 410
    const/4 v8, 0x0

    iput-object v8, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 412
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    const/4 v9, 0x2

    invoke-interface {v8, v9, p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    .line 413
    return-void

    .line 404
    .end local v2           #securityType:I
    .end local v5           #serverPort:I
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 405
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->getPortFromSecurityType()I

    move-result v5

    .line 406
    .restart local v5       #serverPort:I
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Non-integer server port; using \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 198
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->validateFields()V

    .line 199
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string v0, "AccountSetupOutgoingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 186
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 187
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    .line 219
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 348
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 349
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 351
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 352
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 247
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 248
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupOutgoingFragment;->loadSettings()V

    .line 251
    :cond_0
    return-void
.end method
