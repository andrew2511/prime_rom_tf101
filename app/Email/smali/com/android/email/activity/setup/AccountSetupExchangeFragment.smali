.class public Lcom/android/email/activity/setup/AccountSetupExchangeFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupExchangeFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCacheLoginCredential:Ljava/lang/String;

.field mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mServerView:Landroid/widget/EditText;

.field private mSslSecurityView:Landroid/widget/CheckBox;

.field private mStarted:Z

.field private mTrustCertificatesDivider:Landroid/view/View;

.field private mTrustCertificatesView:Landroid/widget/CheckBox;

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v0

    return v0
.end method

.method private usernameFieldValid(Landroid/widget/EditText;)Z
    .locals 2
    .parameter "usernameView"

    .prologue
    .line 272
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validateFields()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-nez v2, :cond_0

    move v2, v3

    .line 297
    :goto_0
    return v2

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->usernameFieldValid(Landroid/widget/EditText;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 285
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->enableNextButton(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    move v2, v0

    .line 297
    goto :goto_0

    .end local v0           #enabled:Z
    :cond_2
    move v0, v3

    .line 282
    goto :goto_1

    .line 288
    .restart local v0       #enabled:Z
    :catch_0
    move-exception v1

    .line 289
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 358
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 359
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 360
    .local v10, sslRequired:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 361
    .local v11, trustCertificates:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 364
    .local v12, userName:Ljava/lang/String;
    const-string v1, "\\"

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 367
    :cond_0
    iput-object v12, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, host:Ljava/lang/String;
    const/4 v5, 0x0

    .line 371
    .local v5, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1bb

    move v4, v1

    .line 373
    .local v4, port:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v9, v1, -0x3

    .line 375
    .local v9, flags:I
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    invoke-static {v1, v9}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .local v0, uri:Ljava/net/URI;
    return-object v0

    .line 371
    .end local v0           #uri:Ljava/net/URI;
    .end local v4           #port:I
    .end local v9           #flags:I
    :cond_1
    const/16 v1, 0x50

    move v4, v1

    goto :goto_0
.end method

.method loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 9
    .parameter "account"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 233
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v5

    .line 268
    :goto_0
    return v5

    .line 235
    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 237
    .local v0, hostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 238
    .local v4, userName:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 241
    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_2
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 248
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_3
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 252
    .local v1, protocol:Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v5, "eas"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 253
    :cond_4
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown account type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 256
    :cond_5
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 257
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_6
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v2, v7

    .line 261
    .local v2, ssl:Z
    :goto_1
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_8

    move v3, v7

    .line 262
    .local v3, trustCertificates:Z
    :goto_2
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->showTrustCertificates(Z)V

    .line 266
    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 267
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 268
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    move-result v5

    goto/16 :goto_0

    .end local v2           #ssl:Z
    .end local v3           #trustCertificates:Z
    :cond_7
    move v2, v8

    .line 260
    goto :goto_1

    .restart local v2       #ssl:Z
    :cond_8
    move v3, v8

    .line 261
    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    .line 392
    .local v0, activity:Lcom/android/email/activity/setup/AccountSetupExchange;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupExchange;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 393
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0f0025

    if-ne v0, v1, :cond_0

    .line 302
    invoke-virtual {p0, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->showTrustCertificates(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    const-string v0, "AccountSetupExchangeFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 88
    const-string v0, "AccountSetupExchangeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    .line 90
    :cond_0
    const-string v0, "eas"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 99
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSettingsMode:Z

    if-eqz v5, :cond_0

    const v5, 0x7f040005

    move v2, v5

    .line 103
    .local v2, layoutId:I
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 104
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, context:Landroid/content/Context;
    const v5, 0x7f0f0023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    .line 107
    const v5, 0x7f0f001e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    .line 108
    const v5, 0x7f0f0024

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    .line 109
    const v5, 0x7f0f0025

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    .line 110
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    const v5, 0x7f0f0026

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    .line 112
    const v5, 0x7f0f0028

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesDivider:Landroid/view/View;

    .line 116
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupExchangeFragment;)V

    .line 124
    .local v3, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    :try_start_0
    invoke-static {v0}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, deviceId:Ljava/lang/String;
    const v5, 0x7f0f0027

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1           #deviceId:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 138
    return-object v4

    .line 99
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #layoutId:I
    .end local v3           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v4           #view:Landroid/view/View;
    :cond_0
    const v5, 0x7f04000c

    move v2, v5

    goto :goto_0

    .line 131
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #layoutId:I
    .restart local v3       #validationTextWatcher:Landroid/text/TextWatcher;
    .restart local v4       #view:Landroid/view/View;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 203
    return-void
.end method

.method public onNext()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 400
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 402
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, userName:Ljava/lang/String;
    const-string v0, "\\"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 406
    :cond_0
    iput-object v11, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 409
    .local v12, userPassword:Ljava/lang/String;
    const/4 v7, 0x0

    .line 410
    .local v7, flags:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    or-int/lit8 v7, v7, 0x1

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    or-int/lit8 v7, v7, 0x8

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, serverAddress:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mSslSecurityView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x1bb

    move v8, v0

    .line 419
    .local v8, port:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v10

    .line 420
    .local v10, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-virtual {v10, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v10, v0, v3, v8, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 422
    iput-object v1, v10, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v9

    .line 425
    .local v9, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-virtual {v9, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v9, v0, v3, v8, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 427
    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 430
    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V

    .line 432
    return-void

    .line 418
    .end local v8           #port:I
    .end local v9           #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v10           #sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_3
    const/16 v0, 0x50

    move v8, v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 180
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 171
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->validateFields()Z

    .line 172
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    const-string v0, "AccountSetupExchangeFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "AccountSetupExchangeFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 159
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 160
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    .line 192
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 321
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 322
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 323
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/emailcommon/service/IEmailService;->hostChanged(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 332
    return-void

    .line 327
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public saveSettingsAfterSetup()V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 222
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 225
    :cond_0
    return-void
.end method

.method public setHostAuthFromAutodiscover(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Z
    .locals 2
    .parameter "newHostAuth"

    .prologue
    .line 345
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 346
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iput-object p1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 347
    iput-object p1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->loadSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v1

    return v1
.end method

.method public showTrustCertificates(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 307
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    move v0, v1

    .line 308
    .local v0, mode:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->mTrustCertificatesDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_0
    return-void

    .line 307
    .end local v0           #mode:I
    :cond_1
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0
.end method
