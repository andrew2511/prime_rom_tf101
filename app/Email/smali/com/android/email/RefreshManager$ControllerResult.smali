.class Lcom/android/email/RefreshManager$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "RefreshManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/RefreshManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field private mSendMailExceptionReported:Z

.field final synthetic this$0:Lcom/android/email/RefreshManager;


# direct methods
.method private constructor <init>(Lcom/android/email/RefreshManager;)V
    .locals 1
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/RefreshManager;Lcom/android/email/RefreshManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/android/email/RefreshManager$ControllerResult;-><init>(Lcom/android/email/RefreshManager;)V

    return-void
.end method

.method private updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 6
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "dontUseNumNewMessages"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->access$700(Lcom/android/email/RefreshManager;)Lcom/android/email/RefreshManager$RefreshStatusMap;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$300(Lcom/android/email/RefreshManager;)Lcom/android/email/Clock;

    move-result-object v1

    invoke-virtual {v0, p1, p6, v1}, Lcom/android/email/RefreshManager$Status;->onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V

    .line 419
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/email/RefreshManager;->access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/email/RefreshManager;->access$600(Lcom/android/email/RefreshManager;JJ)V

    .line 424
    return-void
.end method


# virtual methods
.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 7
    .parameter "exception"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    const/4 v6, 0x0

    .line 440
    if-nez p6, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 441
    iput-boolean v6, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 443
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    if-nez v0, :cond_1

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 446
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/android/email/RefreshManager;->access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V

    .line 449
    :cond_1
    const/16 v0, 0x64

    if-ne p6, v0, :cond_2

    .line 450
    iput-boolean v6, p0, Lcom/android/email/RefreshManager$ControllerResult;->mSendMailExceptionReported:Z

    .line 452
    :cond_2
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 8
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 412
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/RefreshManager$ControllerResult;->updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 413
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 8
    .parameter "exception"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "dontUseNumNewMessages"

    .prologue
    .line 393
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/RefreshManager$ControllerResult;->updateMailboxCallbackInternal(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 394
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 6
    .parameter "exception"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const-wide/16 v3, -0x1

    .line 375
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->access$400(Lcom/android/email/RefreshManager;)Lcom/android/email/RefreshManager$RefreshStatusMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/email/RefreshManager$RefreshStatusMap;->get(J)Lcom/android/email/RefreshManager$Status;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$300(Lcom/android/email/RefreshManager;)Lcom/android/email/Clock;

    move-result-object v1

    invoke-virtual {v0, p1, p4, v1}, Lcom/android/email/RefreshManager$Status;->onCallback(Lcom/android/emailcommon/mail/MessagingException;ILcom/android/email/Clock;)V

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->access$200(Lcom/android/email/RefreshManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v5

    move-wide v1, p2

    invoke-static/range {v0 .. v5}, Lcom/android/email/RefreshManager;->access$500(Lcom/android/email/RefreshManager;JJLjava/lang/String;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/android/email/RefreshManager$ControllerResult;->this$0:Lcom/android/email/RefreshManager;

    invoke-static {v0, p2, p3, v3, v4}, Lcom/android/email/RefreshManager;->access$600(Lcom/android/email/RefreshManager;JJ)V

    .line 381
    return-void
.end method
