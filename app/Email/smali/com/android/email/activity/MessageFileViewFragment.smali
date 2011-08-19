.class public Lcom/android/email/activity/MessageFileViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageFileViewFragment.java"


# static fields
.field private static sFragmentCount:I


# instance fields
.field private mFileEmailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    return-void
.end method


# virtual methods
.method public clearContent()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 86
    return-void
.end method

.method protected isMessageSpecified()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 53
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    .line 60
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 61
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->deleteAttachmentMessages()V

    .line 64
    :cond_0
    return-void
.end method

.method public openMessage(Landroid/net/Uri;)V
    .locals 1
    .parameter "fileEmailUri"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 76
    :cond_0
    if-nez p1, :cond_1

    .line 77
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 79
    :cond_1
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    .line 80
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->loadMessageIfResumed()V

    .line 81
    return-void
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    .line 102
    .local v0, messageUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 113
    :goto_0
    return-object v2

    .line 106
    :cond_0
    const v2, 0x7f0800ac

    invoke-static {p1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/Controller;->loadMessageFromUri(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 108
    .local v1, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v1, :cond_1

    .line 110
    const v2, 0x7f0800aa

    invoke-static {p1, v2}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    move-object v2, v3

    .line 111
    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 113
    goto :goto_0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 2
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 124
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 127
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 128
    return-void
.end method
