.class public abstract Lcom/android/email/activity/MessageViewBase;
.super Landroid/app/Activity;
.source "MessageViewBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# instance fields
.field private mController:Lcom/android/email/Controller;

.field private mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getAccountId()J
.end method

.method protected abstract getLayoutId()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewBase;->setContentView(I)V

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;

    .line 67
    iget-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mFetchAttachmentProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewBase;->mController:Lcom/android/email/Controller;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onLoadMessageError(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->onLoadMessageFinished()V

    .line 129
    return-void
.end method

.method public onLoadMessageFinished()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewBase;->setProgressBarIndeterminateVisibility(Z)V

    .line 124
    return-void
.end method

.method public onLoadMessageStarted()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageViewBase;->setProgressBarIndeterminateVisibility(Z)V

    .line 119
    return-void
.end method

.method public onMessageNotExists()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->finish()V

    .line 134
    return-void
.end method

.method public onMessageViewGone()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 0
    .parameter "mailboxType"

    .prologue
    .line 102
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewBase;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/android/email/activity/ActivityHelper;->openUrlInMessage(Landroid/app/Activity;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method
