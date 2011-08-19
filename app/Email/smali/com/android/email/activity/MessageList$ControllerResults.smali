.class Lcom/android/email/activity/MessageList$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field private mSendMessageException:Lcom/android/emailcommon/mail/MessagingException;

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageList;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageList$ControllerResults;-><init>(Lcom/android/email/activity/MessageList;)V

    return-void
.end method

.method private updateBanner(Lcom/android/emailcommon/mail/MessagingException;IJ)V
    .locals 2
    .parameter "result"
    .parameter "progress"
    .parameter "mailboxKey"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    if-eqz p1, :cond_2

    .line 645
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_2
    if-lez p2, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$900(Lcom/android/email/activity/MessageList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    if-nez p1, :cond_0

    const/16 v1, 0x64

    if-ge p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$800(Lcom/android/email/activity/MessageList;Z)V

    .line 629
    return-void

    .line 628
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 3
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const-wide/16 v1, -0x1

    .line 609
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->isOutbox()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    cmp-long v0, p4, v1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p6, :cond_0

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/emailcommon/mail/MessagingException;

    .line 615
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/emailcommon/mail/MessagingException;

    if-nez v0, :cond_1

    .line 616
    iput-object p1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/emailcommon/mail/MessagingException;

    .line 619
    :cond_1
    cmp-long v0, p4, v1

    if-nez v0, :cond_2

    const/16 v0, 0x64

    if-ne p6, v0, :cond_2

    .line 620
    iget-object v0, p0, Lcom/android/email/activity/MessageList$ControllerResults;->mSendMessageException:Lcom/android/emailcommon/mail/MessagingException;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$ControllerResults;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    invoke-direct {p0, v0, p6, v1, v2}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;IJ)V

    .line 623
    :cond_2
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 625
    :cond_3
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 594
    invoke-direct {p0, p1, p6, p4, p5}, Lcom/android/email/activity/MessageList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;IJ)V

    .line 595
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MessageList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 596
    return-void
.end method
