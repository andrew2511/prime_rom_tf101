.class public Lcom/google/android/gsf/loginservice/BaseActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/loginservice/BaseActivity$2;,
        Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z


# instance fields
.field protected mAddedNewAccount:Z

.field private mAuthThread:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

.field protected mBootstrapMode:Z

.field protected mCallingUid:I

.field private mConfirmCredentials:Ljava/lang/Boolean;

.field protected mExistingAccount:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field protected mIsYoutubeRequest:Z

.field protected mLoginData:Lcom/google/android/gsf/LoginData;

.field protected mRequestExtras:Landroid/os/Bundle;

.field protected mRequestNewAccount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "LoginServiceActivity"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 49
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAuthThread:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 61
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    .line 64
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    .line 67
    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    .line 70
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mExistingAccount:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    .line 83
    iput v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallingUid:I

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/loginservice/BaseActivity;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAuthThread:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/gsf/loginservice/BaseActivity;Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAuthThread:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/gsf/loginservice/BaseActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/loginservice/BaseActivity;Lcom/google/android/gsf/LoginData;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/loginservice/BaseActivity;->onAuthenticationResult(Lcom/google/android/gsf/LoginData;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/loginservice/BaseActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private onAuthenticationResult(Lcom/google/android/gsf/LoginData;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 236
    iput-boolean p2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    .line 238
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "LoginServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v0, v0, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    sget-object v1, Lcom/google/android/gsf/LoginData$Status;->CANCELLED:Lcom/google/android/gsf/LoginData$Status;

    if-eq v0, v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->hideProgress()V

    .line 246
    :cond_1
    sget-object v0, Lcom/google/android/gsf/loginservice/BaseActivity$2;->$SwitchMap$com$google$android$gsf$LoginData$Status:[I

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1}, Lcom/google/android/gsf/LoginData$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    :goto_0
    const-string v0, "LoginServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationResult: unknown status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_1
    return-void

    .line 248
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finishLogin()V

    goto :goto_1

    .line 251
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finishConfirmCredentials(Z)V

    goto :goto_1

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->doErrorActivity()V

    goto :goto_1

    .line 268
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->doLoginActivity()V

    goto :goto_1

    .line 271
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finishConfirmCredentials(Z)V

    goto :goto_1

    .line 276
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->doCaptchaActivity()V

    goto :goto_1

    .line 280
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    goto :goto_1

    .line 284
    :pswitch_5
    const-class v0, Lcom/google/android/gsf/loginservice/DMAgentActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->invokeActivity(Ljava/lang/Class;)V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected authenticate()V
    .locals 2

    .prologue
    .line 204
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "LoginServiceActivity"

    const-string v1, "authenticate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->showProgress()V

    .line 211
    new-instance v0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;-><init>(Lcom/google/android/gsf/loginservice/BaseActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAuthThread:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    .line 212
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAuthThread:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->start()V

    .line 213
    return-void
.end method

.method protected doCaptchaActivity()V
    .locals 1

    .prologue
    .line 354
    const-class v0, Lcom/google/android/gsf/loginservice/CaptchaActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->invokeActivity(Ljava/lang/Class;)V

    .line 355
    return-void
.end method

.method protected doErrorActivity()V
    .locals 1

    .prologue
    .line 329
    const-class v0, Lcom/google/android/gsf/loginservice/ErrorActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->invokeActivity(Ljava/lang/Class;)V

    .line 330
    return-void
.end method

.method protected doLoginActivity()V
    .locals 1

    .prologue
    .line 333
    const-class v0, Lcom/google/android/gsf/loginservice/LoginActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->invokeActivity(Ljava/lang/Class;)V

    .line 334
    return-void
.end method

.method protected doRunBrowserLoginIntroActivity()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string v1, "loginData"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    const-string v1, "requestExtras"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 340
    const-string v1, "requestNewAccount"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const-string v1, "addedNewAccount"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const-string v1, "existingAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mExistingAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "isYoutubeRequest"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    const-string v1, "isBootstrapMode"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mBootstrapMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string v1, "addPreExistingAccount"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string v1, "targetAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    return-void
.end method

.method protected doRunSetupWizardActivity()V
    .locals 3

    .prologue
    .line 358
    sget-boolean v0, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "LoginServiceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running SetupWizard with firstAccount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mBootstrapMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    const-class v0, Lcom/google/android/gsf/loginservice/RunSetupWizardActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->invokeActivity(Ljava/lang/Class;)V

    .line 360
    return-void
.end method

.method protected finishConfirmCredentials(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 154
    sget-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "LoginServiceActivity"

    const-string v2, "finishConfirmCredentials()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "confirmResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 159
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    .line 162
    return-void
.end method

.method protected finishLogin()V
    .locals 3

    .prologue
    .line 165
    sget-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "LoginServiceActivity"

    const-string v2, "finishLogin()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callerExtras"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 169
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "accountType"

    const-string v2, "com.google"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v1, v1, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const-string v1, "authtoken"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mAuthtoken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    .line 177
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    .line 180
    return-void
.end method

.method protected hideProgress()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->dismissDialog(I)V

    .line 228
    return-void
.end method

.method protected invokeActivity(Ljava/lang/Class;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 299
    const/16 v0, 0x3e9

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->invokeActivity(Ljava/lang/Class;I)V

    .line 300
    return-void
.end method

.method protected invokeActivity(Ljava/lang/Class;I)V
    .locals 3
    .parameter "target"
    .parameter "requestCode"

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "loginData"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 311
    const-string v1, "requestExtras"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    const-string v1, "requestNewAccount"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v1, "addedNewAccount"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    const-string v1, "existingAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mExistingAccount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string v1, "isYoutubeRequest"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    const-string v1, "isBootstrapMode"

    iget-boolean v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mBootstrapMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/loginservice/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    .line 364
    packed-switch p1, :pswitch_data_0

    .line 379
    :cond_0
    :goto_0
    const/16 v2, 0x3ea

    if-ne p1, v2, :cond_1

    if-ne p2, v4, :cond_1

    .line 380
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finishLogin()V

    .line 383
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->finish()V

    .line 385
    return-void

    .line 366
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 367
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    move-object v1, v2

    .line 368
    .local v1, result:Landroid/os/Bundle;
    :goto_1
    if-eqz v1, :cond_2

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, newResult:Landroid/os/Bundle;
    const-string v2, "authAccount"

    const-string v3, "authAccount"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v2, "accountType"

    const-string v3, "com.google"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object v1, v0

    .line 376
    .end local v0           #newResult:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setAccountAuthenticatorResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 367
    .end local v1           #result:Landroid/os/Bundle;
    :cond_3
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 93
    sget-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "LoginServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    if-nez p1, :cond_5

    .line 97
    sget-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_1

    const-string v1, "LoginServiceActivity"

    const-string v2, "loading data from Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/loginservice/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "callerExtras"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    .line 100
    const-string v1, "loginData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/LoginData;

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 101
    const-string v1, "requestNewAccount"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    iget-object v2, v2, Lcom/google/android/gsf/LoginData;->mUsername:Ljava/lang/String;

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    .line 103
    const-string v1, "addedNewAccount"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    .line 104
    const-string v1, "existingAccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mExistingAccount:Ljava/lang/String;

    .line 105
    const-string v1, "callingUid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallingUid:I

    .line 106
    const-string v1, "isYoutubeRequest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    .line 107
    const-string v1, "confirmCredentials"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    .line 108
    const-string v1, "isBootstrapMode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mBootstrapMode:Z

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    if-eqz v1, :cond_2

    .line 122
    const v1, 0x7f0800bd

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->setTitle(I)V

    .line 127
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "callerExtras"

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v4, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    sget-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_3

    .line 132
    const-string v1, "LoginServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loginData contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-virtual {v3}, Lcom/google/android/gsf/LoginData;->dump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v1, "LoginServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    request new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, "LoginServiceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      added new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    return-void

    :cond_4
    move v2, v4

    .line 101
    goto/16 :goto_0

    .line 110
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5
    sget-boolean v1, Lcom/google/android/gsf/loginservice/BaseActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_6

    const-string v1, "LoginServiceActivity"

    const-string v2, "loading data from icicle"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_6
    const-string v1, "requestExtras"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    .line 112
    const-string v1, "loginData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/LoginData;

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 113
    const-string v1, "requestNewAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    .line 114
    const-string v1, "addedNewAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    .line 115
    const-string v1, "existingAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mExistingAccount:Ljava/lang/String;

    .line 116
    const-string v1, "callingUid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallingUid:I

    .line 117
    const-string v1, "isYoutubeRequest"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    .line 118
    const-string v1, "confirmCredentials"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mConfirmCredentials:Ljava/lang/Boolean;

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 184
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0800be

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/loginservice/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 187
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 188
    new-instance v1, Lcom/google/android/gsf/loginservice/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/loginservice/BaseActivity$1;-><init>(Lcom/google/android/gsf/loginservice/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 197
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "requestExtras"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    const-string v0, "loginData"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 143
    const-string v0, "requestNewAccount"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mRequestNewAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    const-string v0, "addedNewAccount"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mAddedNewAccount:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 145
    const-string v0, "existingAccount"

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mExistingAccount:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "callingUid"

    iget v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mCallingUid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    const-string v0, "isYoutubeRequest"

    iget-boolean v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity;->mIsYoutubeRequest:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method

.method protected showProgress()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/loginservice/BaseActivity;->showDialog(I)V

    .line 221
    return-void
.end method
