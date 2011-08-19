.class public Lcom/google/android/gsf/login/ChooseAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAndroidAgreement:Landroid/widget/TextView;

.field private mBackButton:Landroid/view/View;

.field private mChooseAccountTitle:Landroid/widget/TextView;

.field private mCreateButton:Landroid/view/View;

.field private mSignInButton:Landroid/view/View;

.field private mSkipButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method private checkSimOrLaunchWireless()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 137
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->isSimAbsent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->isWifiOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SetupWirelessIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->allowSkip()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->setContentView(I)V

    .line 151
    :goto_0
    const v2, 0x7f0c002e

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mChooseAccountTitle:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mChooseAccountTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mChooseAccountTitle:Landroid/widget/TextView;

    const v3, 0x7f080034

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/login/ChooseAccountActivity;->getStringWithDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    const v2, 0x7f0c002f

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mCreateButton:Landroid/view/View;

    .line 156
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mCreateButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v2, 0x7f0c0030

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSignInButton:Landroid/view/View;

    .line 159
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSignInButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0c0006

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSkipButton:Landroid/view/View;

    .line 163
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSkipButton:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSkipButton:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_1
    const v2, 0x7f0c0031

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mAndroidAgreement:Landroid/widget/TextView;

    .line 167
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mAndroidAgreement:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mAndroidAgreement:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 169
    const v2, 0x7f08003a

    invoke-static {p0, v2}, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 170
    .local v1, msg:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mAndroidAgreement:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mAndroidAgreement:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 172
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mAndroidAgreement:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    .end local v1           #msg:Ljava/lang/CharSequence;
    :cond_2
    const v2, 0x7f0c000d

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mBackButton:Landroid/view/View;

    .line 176
    iget-object v2, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->setBackButton(Landroid/view/View;)V

    .line 178
    sget-object v2, Lcom/google/android/gsf/login/ChooseAccountActivity;->mUserData:Ljava/util/HashMap;

    const-string v3, "testMode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->signIntoBrowser()V

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->isXLargeScreen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 184
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_4

    .line 185
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 186
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 189
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_4
    return-void

    .line 147
    :cond_5
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method private isSimAbsent()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ChooseAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 114
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiOn()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 119
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 120
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    move v2, v4

    .line 129
    :goto_0
    return v2

    .line 123
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 125
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .end local v0           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_2
    move v2, v4

    .line 129
    goto :goto_0
.end method

.method private maybeSkipAccountSetup()Z
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "firstRun"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mUserData:Ljava/util/HashMap;

    const-string v1, "firstRun"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->onSkip()V

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_0

    .line 215
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 209
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->onSkip()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 60
    sget-object v0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->ACCOUNT_TYPE_ENTERPRISE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->OAUTH_ACCESS_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mCreateButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CreateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSignInButton:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/login/ChooseAccountActivity;->mSkipButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->onSkip()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->maybeSkipAccountSetup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->initViews()V

    .line 106
    invoke-direct {p0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->checkSimOrLaunchWireless()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 78
    const v1, 0x7f080078

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 79
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020012

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 80
    return v3
.end method

.method protected onSkip()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->setResult(I)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    const-string v1, "primaryMessage"

    const v2, 0x7f08008b

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ChooseAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ChooseAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method
