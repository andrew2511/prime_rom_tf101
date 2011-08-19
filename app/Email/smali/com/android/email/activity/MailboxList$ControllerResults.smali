.class Lcom/android/email/activity/MailboxList$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxList;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxList;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;)V

    return-void
.end method

.method private updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 316
    if-eqz p1, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    iget-object v1, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-lez p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxList;->access$400(Lcom/android/email/activity/MailboxList;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 2
    .parameter "result"
    .parameter "progress"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    if-nez p1, :cond_0

    const/16 v1, 0x64

    if-ge p2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxList;->access$300(Lcom/android/email/activity/MailboxList;Z)V

    .line 304
    return-void

    .line 303
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 298
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 300
    :cond_0
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 289
    invoke-direct {p0, p1, p6}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 291
    :cond_0
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 2
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/email/activity/MailboxList$ControllerResults;->this$0:Lcom/android/email/activity/MailboxList;

    invoke-static {v0}, Lcom/android/email/activity/MailboxList;->access$100(Lcom/android/email/activity/MailboxList;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateBanner(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 280
    invoke-direct {p0, p1, p4}, Lcom/android/email/activity/MailboxList$ControllerResults;->updateProgress(Lcom/android/emailcommon/mail/MessagingException;I)V

    .line 282
    :cond_0
    return-void
.end method
