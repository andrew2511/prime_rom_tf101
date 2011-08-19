.class public Lcom/android/email/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 68
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .locals 0
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 65
    return-void
.end method

.method public controllerCommandCompleted(Z)V
    .locals 0
    .parameter "moreCommandsToRun"

    .prologue
    .line 112
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .locals 0
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 38
    return-void
.end method

.method public listFoldersFinished(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 41
    return-void
.end method

.method public listFoldersStarted(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 35
    return-void
.end method

.method public loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 101
    return-void
.end method

.method public loadAttachmentFinished(JJJ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 93
    return-void
.end method

.method public loadAttachmentStarted(JJJZ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 87
    return-void
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 0
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 62
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 59
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .locals 0
    .parameter "messageId"

    .prologue
    .line 56
    return-void
.end method

.method public sendPendingMessagesCompleted(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 74
    return-void
.end method

.method public sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 77
    return-void
.end method

.method public sendPendingMessagesStarted(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 71
    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 53
    return-void
.end method

.method public synchronizeMailboxFinished(JJII)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 49
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .locals 0
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 45
    return-void
.end method
