.class public Lcom/google/android/gsf/login/CreateAccountTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "CreateAccountTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/CreateAccountTask$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    .line 129
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    const v1, 0x7f08006f

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CreateAccountTask;->isXLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountTask;->setVerboseMessage(I)V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountTask;->setSimpleMessage(I)V

    goto :goto_0
.end method

.method public onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v2, 0x7f08008e

    const/4 v3, 0x1

    .line 79
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 80
    sget-object v0, Lcom/google/android/gsf/login/CreateAccountTask$1;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    .line 140
    :goto_0
    return-void

    .line 82
    :pswitch_0
    sget-object v0, Lcom/google/android/gsf/login/CreateAccountTask;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->SID:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gsf/login/CreateAccountTask;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "GoogleLoginService"

    const-string v1, "CREATE_ACCOUNT returned USERNAME_UNAVAILABLE, trying login..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->LOGIN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CreateAccountTask;->dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "GoogleLoginService"

    const-string v1, "USERNAME_UNAVAILABLE, but we have a SID. Continuing..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/login/CreateAccountTask;->onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :pswitch_1
    sget-object v0, Lcom/google/android/gsf/login/BackendStub$Status;->SUCCESS:Lcom/google/android/gsf/login/BackendStub$Status;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gsf/login/CreateAccountTask;->onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CreateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08008f

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/login/CreateAccountTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CreateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080089

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CreateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gsf/login/CreateAccountTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_2
    iget v0, p2, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    .line 134
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gsf/login/CreateAccountTask;->requestFinish(ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 137
    :cond_3
    const-string v0, "GoogleLoginService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid reply in ChoosePasswordActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 61
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    .line 66
    :cond_0
    sput-boolean v4, Lcom/google/android/gsf/login/BaseActivity;->isNewAccount:Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "primaryMessage"

    const v2, 0x7f080083

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CreateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "optionalMessage"

    const v2, 0x7f08003f

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CreateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "loginData"

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "loginData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    const-class v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v4}, Lcom/google/android/gsf/login/CreateAccountTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 75
    :cond_1
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 50
    sget-object v1, Lcom/google/android/gsf/login/CreateAccountTask;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "username empty in CreateAccountTask"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    sget-object v1, Lcom/google/android/gsf/login/BackgroundTask$Action;->CREATE_ACCOUNT:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CreateAccountTask;->dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V

    .line 55
    return-void
.end method
