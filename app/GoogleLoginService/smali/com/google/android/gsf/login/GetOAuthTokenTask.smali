.class public Lcom/google/android/gsf/login/GetOAuthTokenTask;
.super Lcom/google/android/gsf/login/BackgroundTask;
.source "GetOAuthTokenTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mRequestedTokenType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gsf/login/BackgroundTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BackgroundTask;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f08004c

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->setSimpleMessage(I)V

    .line 42
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->setVerboseMessage(I)V

    .line 43
    return-void
.end method

.method public onReplyServerMessage(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 2
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 68
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Status;->BAD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Status;

    if-ne p1, v1, :cond_0

    const v1, 0x7f0800b3

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 71
    .local v0, replymsg:Ljava/lang/String;
    :goto_0
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->showErrorAndFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 68
    .end local v0           #replymsg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->getReplyMessage(Lcom/google/android/gsf/login/BackendStub$Status;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method protected onReplySuccess(Lcom/google/android/gsf/login/BackendStub$Status;Landroid/os/Message;)V
    .locals 3
    .parameter "status"
    .parameter "msg"

    .prologue
    .line 63
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 64
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 47
    invoke-super {p0}, Lcom/google/android/gsf/login/BackgroundTask;->start()V

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, defaultTokenType:I
    invoke-virtual {p0}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "tokenType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/gsf/login/GetOAuthTokenTask;->mRequestedTokenType:I

    .line 52
    iget v2, p0, Lcom/google/android/gsf/login/GetOAuthTokenTask;->mRequestedTokenType:I

    .line 55
    sget-object v0, Lcom/google/android/gsf/login/BackgroundTask$Action;->GET_OAUTH_REQUEST_TOKEN:Lcom/google/android/gsf/login/BackgroundTask$Action;

    .line 58
    .local v0, action:Lcom/google/android/gsf/login/BackgroundTask$Action;
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/GetOAuthTokenTask;->dispatchAction(Lcom/google/android/gsf/login/BackgroundTask$Action;)V

    .line 59
    return-void
.end method
