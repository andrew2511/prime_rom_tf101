.class public Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;
.super Lcom/google/android/gsf/loginservice/BaseActivity;
.source "RunSetupWizardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;-><init>()V

    return-void
.end method

.method private launchSetupWizard()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    const-class v1, Lcom/google/android/gsf/login/AccountIntroActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    const-string v1, "optional_message"

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "optional_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 86
    const-string v1, "glsOptionData"

    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 87
    const-string v1, "allowSkip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 88
    const/16 v1, 0xc9

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method

.method private returnResult(ILandroid/content/Intent;)V
    .locals 6
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .line 97
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 98
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "resultIntent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 101
    .local v1, resultIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_2

    .line 103
    :try_start_0
    invoke-virtual {v1, p0, p1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_1
    return-void

    .end local v1           #resultIntent:Landroid/app/PendingIntent;
    :cond_1
    move-object v2, v5

    .line 98
    goto :goto_0

    .line 104
    .restart local v1       #resultIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "RunSetupWizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** pending intent was canceled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 107
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 110
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1
.end method

.method private tryAccount()V
    .locals 5

    .prologue
    .line 54
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 59
    .local v0, accounts:[Landroid/accounts/Account;
    iget-boolean v3, p0, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->mBootstrapMode:Z

    if-eqz v3, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->mBootstrapMode:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->mRequestNewAccount:Z

    if-eqz v3, :cond_2

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->launchSetupWizard()V

    .line 63
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->mRequestNewAccount:Z

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "callerExtras"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 69
    .local v2, requestExtras:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    :cond_3
    const/4 v3, -0x1

    invoke-direct {p0, v3, v1}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->returnResult(ILandroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 116
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/loginservice/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 122
    const/16 v0, 0xc9

    if-ne p1, v0, :cond_3

    .line 123
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->returnResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->finish()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-nez p2, :cond_2

    .line 133
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->tryAccount()V

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->tryAccount()V

    goto :goto_0

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad request code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/android/gsf/loginservice/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    if-nez p1, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;->tryAccount()V

    .line 48
    :cond_0
    return-void
.end method
