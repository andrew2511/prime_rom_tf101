.class public Lcom/android/email/activity/setup/AccountSetupIncoming;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupIncoming.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# instance fields
.field mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

.field private mNextButton:Landroid/widget/Button;

.field mNextButtonEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    return-void
.end method

.method public static actionIncomingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setFlowMode(I)V

    .line 46
    invoke-static {p2}, Lcom/android/email/activity/setup/SetupData;->setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupIncoming;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .locals 2
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupOutgoing;->actionOutgoingSettings(Landroid/app/Activity;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->finish()V

    .line 115
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onNext()V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->onBackPressed()V

    goto :goto_0

    .line 72
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
    .line 52
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 54
    const v0, 0x7f04000d

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0f0022

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    .line 60
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mFragment:Lcom/android/email/activity/setup/AccountSetupIncomingFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 62
    const v0, 0x7f0f001b

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    .line 63
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButtonEnabled:Z

    .line 101
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncoming;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 102
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 88
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 90
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncoming;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 91
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const-string v2, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 92
    const-string v2, "back"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 93
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    return-void
.end method
