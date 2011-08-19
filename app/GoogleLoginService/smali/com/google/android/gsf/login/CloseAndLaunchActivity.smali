.class public Lcom/google/android/gsf/login/CloseAndLaunchActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "CloseAndLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/CloseAndLaunchActivity$1;,
        Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;
    }
.end annotation


# instance fields
.field private mAccountWasNewlyCreated:Z

.field private mLoginCompleted:Z

.field private mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 46
    sget-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->START:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    iput-object v0, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    return-void
.end method

.method private getCurrentAccount()Landroid/accounts/Account;
    .locals 5

    .prologue
    .line 149
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 150
    .local v0, accounts:[Landroid/accounts/Account;
    sget-object v3, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mUserData:Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    .local v2, username:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 153
    aget-object v3, v0, v1

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.google"

    aget-object v4, v0, v1

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    aget-object v3, v0, v1

    .line 158
    :goto_1
    return-object v3

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private maybeShowAccountSettings()V
    .locals 3

    .prologue
    .line 145
    const/16 v0, 0x8

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 146
    return-void
.end method

.method private tryLaunch()V
    .locals 4

    .prologue
    .line 88
    sget-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloseAndLaunchActivity.tryLaunch with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLoginCompleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFirstGoogleAccount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->isFirstGoogleAccount(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFirstRun "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->isFirstRun()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    sget-object v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity$1;->$SwitchMap$com$google$android$gsf$login$CloseAndLaunchActivity$State:[I

    iget-object v2, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->backupExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    sget-object v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->BACKUP_CONSENT:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    iput-object v1, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 107
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->isFirstGoogleAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->isXLargeScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BACKUP_CONSENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v0, "GoogleLoginService"

    const-string v1, "Could not launch backup consent... skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    :pswitch_1
    sget-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->SHOW_ACCOUNT_SETTINGS:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    iput-object v0, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 121
    iget-boolean v0, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    if-eqz v0, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->maybeShowAccountSettings()V

    goto :goto_0

    .line 128
    :cond_2
    :pswitch_2
    sget-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->DONE:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    iput-object v0, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mState:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 129
    iget-boolean v0, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    if-eqz v0, :cond_3

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SyncIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v1, "account"

    invoke-direct {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 132
    const-string v1, "EXTRA_ACCOUNT_WAS_NEWLY_CREATED"

    iget-boolean v2, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mAccountWasNewlyCreated:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 139
    :cond_3
    :pswitch_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->onSetupComplete(Z)V

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 163
    packed-switch p1, :pswitch_data_0

    .line 173
    :pswitch_0
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown activity result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/login/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    :goto_0
    return-void

    .line 168
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->tryLaunch()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "loginData"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/LoginData;

    .line 55
    .local v0, loginData:Lcom/google/android/gsf/LoginData;
    sget-object v4, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mUserData:Ljava/util/HashMap;

    const-string v5, "EXTRA_ACCOUNT_WAS_NEWLY_CREATED"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 56
    .local v1, newlyCreated:Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mAccountWasNewlyCreated:Z

    .line 59
    if-eqz v0, :cond_3

    move v4, v7

    :goto_1
    iput-boolean v4, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    .line 66
    if-nez v0, :cond_4

    .line 67
    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->SHARED_PREFS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v6}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 68
    .local v2, settings:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, username:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    sget-object v4, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mUserData:Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v5}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v4, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mUserData:Ljava/util/HashMap;

    const-string v5, "firstRun"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-boolean v7, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mLoginCompleted:Z

    .line 82
    .end local v2           #settings:Landroid/content/SharedPreferences;
    .end local v3           #username:Ljava/lang/String;
    :cond_0
    :goto_2
    if-nez p1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->tryLaunch()V

    .line 85
    :cond_1
    return-void

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_ACCOUNT_WAS_NEWLY_CREATED"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v6

    .line 59
    goto :goto_1

    .line 75
    :cond_4
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-boolean v5, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->mAccountWasNewlyCreated:Z

    invoke-static {v4, p0, v0, v5}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z

    move-result v4

    if-nez v4, :cond_5

    .line 77
    sget-object v4, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    iput-object v4, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 79
    :cond_5
    iget-boolean v4, p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "GoogleLoginService"

    const-string v5, "Account info saved"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
