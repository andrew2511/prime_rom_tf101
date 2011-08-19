.class Lcom/android/email/activity/MessageListXL$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 891
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 891
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$ControllerResult;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method

.method private handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 2
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 929
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    if-nez p1, :cond_2

    .line 933
    if-lez p4, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v0, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$2200(Lcom/android/email/activity/MessageListXL;J)V

    goto :goto_0

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-static {v1, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3}, Lcom/android/email/activity/MessageListXL;->access$2300(Lcom/android/email/activity/MessageListXL;Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 919
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 920
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 925
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 926
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 895
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 896
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 901
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 902
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 907
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 908
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 913
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 914
    return-void
.end method
