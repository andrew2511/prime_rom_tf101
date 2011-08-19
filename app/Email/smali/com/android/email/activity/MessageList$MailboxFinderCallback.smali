.class Lcom/android/email/activity/MessageList$MailboxFinderCallback;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxFinderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList$MailboxFinderCallback;-><init>(Lcom/android/email/activity/MessageList;)V

    return-void
.end method


# virtual methods
.method public onAccountNotFound()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$1100(Lcom/android/email/activity/MessageList;)V

    .line 665
    return-void
.end method

.method public onAccountSecurityHold(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 678
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 679
    return-void
.end method

.method public onMailboxFound(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v1, Lcom/android/email/activity/MessageList$SetTitleTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {v1, v2, p3, p4}, Lcom/android/email/activity/MessageList$SetTitleTask;-><init>(Lcom/android/email/activity/MessageList;J)V

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$1002(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$SetTitleTask;)Lcom/android/email/activity/MessageList$SetTitleTask;

    .line 657
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$1000(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$SetTitleTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$SetTitleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 658
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->openMailbox(J)V

    .line 659
    return-void
.end method

.method public onMailboxNotFound(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MailboxFinderCallback;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$1100(Lcom/android/email/activity/MessageList;)V

    .line 671
    return-void
.end method
