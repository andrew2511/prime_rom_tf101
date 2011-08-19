.class Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountFolderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountFolderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/AccountFolderListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/AccountFolderListFragment;Lcom/android/email/activity/AccountFolderListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;-><init>(Lcom/android/email/activity/AccountFolderListFragment;)V

    return-void
.end method


# virtual methods
.method public deleteAccountCallback(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    .line 468
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 1
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 460
    const/16 v0, 0x64

    if-ne p6, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    .line 463
    :cond_0
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 1
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 452
    const/16 v0, 0x64

    if-ne p6, v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/email/activity/AccountFolderListFragment$ControllerResults;->this$0:Lcom/android/email/activity/AccountFolderListFragment;

    invoke-static {v0}, Lcom/android/email/activity/AccountFolderListFragment;->access$600(Lcom/android/email/activity/AccountFolderListFragment;)V

    .line 455
    :cond_0
    return-void
.end method
