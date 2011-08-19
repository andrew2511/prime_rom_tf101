.class public Lcom/google/android/gsf/login/ReactivateAccountTask;
.super Lcom/google/android/gsf/login/CreateAccountTask;
.source "ReactivateAccountTask.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/gsf/login/CreateAccountTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/CreateAccountTask;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ReactivateAccountTask;->setSimpleMessage(I)V

    .line 35
    return-void
.end method

.method public onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    const-string v1, "primaryMessage"

    const v2, 0x7f08009e

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ReactivateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "optionalMessage"

    const v2, 0x7f08003f

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ReactivateAccountTask;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "loginData"

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "loginData"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    const-class v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 50
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gsf/login/ReactivateAccountTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gsf/login/CreateAccountTask;->onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/android/gsf/login/CreateAccountTask;->start()V

    .line 40
    return-void
.end method
