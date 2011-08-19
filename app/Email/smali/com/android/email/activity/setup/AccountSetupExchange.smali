.class public Lcom/android/email/activity/setup/AccountSetupExchange;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupExchange.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z

.field mStartedAutoDiscovery:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 80
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupExchange;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method private startAutoDiscover()V
    .locals 5

    .prologue
    .line 141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 143
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->isAllowAutodiscover()Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 149
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 150
    .local v2, username:Ljava/lang/String;
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 151
    .local v1, password:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 152
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSetupExchange;->onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V

    goto :goto_0
.end method


# virtual methods
.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 2
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 163
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    if-nez p1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1, p2}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setHostAuthFromAutodiscover(Lcom/android/emailcommon/provider/EmailContent$HostAuth;)Z

    move-result v0

    .line 171
    .local v0, valid:Z
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    goto :goto_0
.end method

.method public onCheckSettingsComplete(II)V
    .locals 0
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    return-void

    .line 208
    :pswitch_1
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->finish()V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    :pswitch_0
    return-void

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->onNext()V

    goto :goto_0

    .line 118
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->onBackPressed()V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x7f0f0018
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 88
    const v0, 0x7f04000b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->setContentView(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    .line 92
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mFragment:Lcom/android/email/activity/setup/AccountSetupExchangeFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AccountSetupExchangeFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 94
    const v0, 0x7f0f001b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupExchange;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    if-nez v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->startAutoDiscover()V

    .line 106
    :cond_1
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButtonEnabled:Z

    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 183
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 185
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupExchange;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 186
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 187
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 188
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 189
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "AccountSetupExchange.StartedAutoDiscovery"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupExchange;->mStartedAutoDiscovery:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    return-void
.end method
