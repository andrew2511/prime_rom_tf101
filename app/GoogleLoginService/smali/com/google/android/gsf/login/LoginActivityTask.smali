.class public Lcom/google/android/gsf/login/LoginActivityTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "LoginActivityTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/LoginActivityTask$3;
    }
.end annotation


# instance fields
.field mAccountIsNotFullyCreated:Z

.field mFinishIntent:Landroid/content/Intent;

.field mLoginData:Lcom/google/android/gsf/LoginData;

.field mPerformFinish:Ljava/lang/Runnable;

.field private mWaitForAndroidId:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    .line 190
    new-instance v0, Lcom/google/android/gsf/login/LoginActivityTask$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/LoginActivityTask$1;-><init>(Lcom/google/android/gsf/login/LoginActivityTask;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mWaitForAndroidId:Ljava/lang/Runnable;

    .line 217
    new-instance v0, Lcom/google/android/gsf/login/LoginActivityTask$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/LoginActivityTask$2;-><init>(Lcom/google/android/gsf/login/LoginActivityTask;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPerformFinish:Ljava/lang/Runnable;

    return-void
.end method

.method private saveNewAccount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    if-eqz v1, :cond_2

    .line 165
    move-object v0, p0

    .line 166
    .local v0, context:Lcom/google/android/gsf/login/LoginActivityTask;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    invoke-static {v1, v0, v2, v4}, Lcom/google/android/gsf/loginservice/GoogleLoginService;->saveNewAccountInternal(Landroid/accounts/AccountManager;Landroid/content/Context;Lcom/google/android/gsf/LoginData;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    sget-object v2, Lcom/google/android/gsf/LoginData$Status;->BAD_REQUEST:Lcom/google/android/gsf/LoginData$Status;

    iput-object v2, v1, Lcom/google/android/gsf/LoginData;->mStatus:Lcom/google/android/gsf/LoginData$Status;

    .line 176
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAccountIsNotFullyCreated:Z

    .line 181
    .end local v0           #context:Lcom/google/android/gsf/login/LoginActivityTask;
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mWaitForAndroidId:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 188
    :goto_2
    return-void

    .line 170
    .restart local v0       #context:Lcom/google/android/gsf/login/LoginActivityTask;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->isFirstRun()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v2, Landroid/accounts/Account;

    sget-object v1, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivityTask;->setBackupAccount(Landroid/accounts/Account;)Z

    goto :goto_0

    .line 178
    .end local v0           #context:Lcom/google/android/gsf/login/LoginActivityTask;
    :cond_2
    const-string v1, "GoogleLoginService"

    const-string v2, "mLoginData == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mPerformFinish:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private saveNewAccountAndRestoreOrFinish(Lcom/google/android/gsf/LoginData;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mLoginData:Lcom/google/android/gsf/LoginData;

    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mFinishIntent:Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mFinishIntent:Landroid/content/Intent;

    const-string v1, "primaryMessage"

    const v2, 0x7f080086

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivityTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mFinishIntent:Landroid/content/Intent;

    const-string v1, "optionalMessage"

    const v2, 0x7f08003f

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivityTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mFinishIntent:Landroid/content/Intent;

    const-string v1, "loginData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mFinishIntent:Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    invoke-direct {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->saveNewAccount()V

    .line 160
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivityTask;->setSimpleMessage(I)V

    .line 58
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAccountIsNotFullyCreated:Z

    .line 60
    const v2, 0x7f0c000e

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/LoginActivityTask;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 61
    .local v1, titleView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 62
    const v2, 0x7f0800ed

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 68
    const v2, 0x7f0800b8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 70
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    iget-boolean v2, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAccountIsNotFullyCreated:Z

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, userName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 79
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, account:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 85
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->onDestroy()V

    .line 86
    return-void
.end method

.method public onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 226
    iget v0, p2, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    .line 227
    sget-object v0, Lcom/google/android/gsf/login/LoginActivityTask$3;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/LoginActivityTask;->getReplyMessage(Lcom/google/android/gsf/login/BackendStub$Status;)Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-boolean v1, p0, Lcom/google/android/gsf/login/LoginActivityTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error logging in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/LoginActivityTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/LoginActivityTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 231
    :pswitch_0
    sget-object v0, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_FLAGS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->FLAGS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/NonGmailCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v0, v4}, Lcom/google/android/gsf/login/LoginActivityTask;->requestFinish(ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 249
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ReactivateAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5, v0, v4}, Lcom/google/android/gsf/login/LoginActivityTask;->requestFinish(ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 4
    .parameter "status"
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReplySuccess() what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    iput-boolean v3, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelable:Z

    .line 138
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    iput-boolean v3, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAllowBackHardKey:Z

    .line 141
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "loginData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/LoginData;

    invoke-direct {p0, v0}, Lcom/google/android/gsf/login/LoginActivityTask;->saveNewAccountAndRestoreOrFinish(Lcom/google/android/gsf/LoginData;)V

    .line 144
    :cond_0
    return-void
.end method

.method public start()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 90
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 93
    sget-object v6, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 94
    .local v5, username:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 95
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 97
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 98
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/google/android/gsf/login/LoginActivityTask;->isFirstRun()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    invoke-direct {p0, v8}, Lcom/google/android/gsf/login/LoginActivityTask;->saveNewAccountAndRestoreOrFinish(Lcom/google/android/gsf/LoginData;)V

    .line 123
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-void

    .line 106
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    const v6, 0x7f08008c

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LoginActivityTask;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08008d

    invoke-virtual {p0, v7}, Lcom/google/android/gsf/login/LoginActivityTask;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/CharSequence;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gsf/login/LoginActivityTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    sget-object v6, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v6, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v6, Lcom/google/android/gsf/login/LoginActivityTask;->mUserData:Ljava/util/HashMap;

    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_FLAGS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iput-boolean v10, p0, Lcom/google/android/gsf/login/LoginActivityTask;->mAccountIsNotFullyCreated:Z

    .line 122
    sget-object v6, Lcom/google/android/gsf/login/BackgroundTask$Action;->LOGIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {p0, v6}, Lcom/google/android/gsf/login/LoginActivityTask;->dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V

    goto :goto_1
.end method
