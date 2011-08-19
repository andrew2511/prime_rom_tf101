.class public Lcom/google/android/gsf/login/CheckAvailTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "CheckAvailTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/CheckAvailTask$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const v2, 0x7f080070

    .line 38
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gsf/login/CheckAvailTask;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CheckAvailTask;->setVerboseMessage(I)V

    .line 45
    :goto_0
    sget-object v1, Lcom/google/android/gsf/login/CheckAvailTask;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    .local v0, username:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    const-string v2, "CheckAvailTask: username was empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void

    .line 43
    .end local v0           #username:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/CheckAvailTask;->setSimpleMessage(I)V

    goto :goto_0
.end method

.method public onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 67
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 68
    sget-object v0, Lcom/google/android/gsf/login/CheckAvailTask$1;->$SwitchMap$com$google$android$gsf$login$BackendStub$Status:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/login/BackendStub$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/CheckAvailTask;->getReplyMessage(Lcom/google/android/gsf/login/BackendStub$Status;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-boolean v1, p0, Lcom/google/android/gsf/login/CheckAvailTask;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "GoogleLoginService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checking account availability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/CheckAvailTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/CheckAvailTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 72
    :pswitch_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/CheckAvailTask;->requestFinish(ILandroid/content/Intent;Z)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/BackgroundTask;->onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 59
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 61
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/CheckAvailTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 63
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 54
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->CHECK_AVAIL:Lcom/google/android/gsf/login/BackgroundTask$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/CheckAvailTask;->dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V

    .line 55
    return-void
.end method
