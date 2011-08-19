.class Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxListFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method


# virtual methods
.method public onAccountSelected(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    const-wide/16 v3, -0x1

    .line 426
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectAccount(JJJ)V

    .line 427
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$900(Lcom/android/email/activity/MessageListXL;)V

    .line 428
    return-void
.end method

.method public onCurrentMailboxUpdated(JLjava/lang/String;I)V
    .locals 1
    .parameter "mailboxId"
    .parameter "mailboxName"
    .parameter "unreadCount"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/email/activity/MessageListXLFragmentManager;->setCurrentMailboxName(Ljava/lang/String;I)V

    .line 433
    return-void
.end method

.method public onMailboxSelected(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$MailboxListFragmentCallback;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$800(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p3, p4, v1, v2}, Lcom/android/email/activity/MessageListXLFragmentManager;->selectMailbox(JJ)V

    .line 422
    return-void
.end method
