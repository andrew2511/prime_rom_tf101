.class Lcom/android/email/service/MailService$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 762
    if-nez p1, :cond_0

    const/16 v2, 0x64

    if-ne p6, v2, :cond_3

    .line 763
    :cond_0
    if-eqz p1, :cond_1

    .line 766
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, -0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 768
    :cond_1
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 769
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v0}, Lcom/android/email/service/MailService;->reschedule(Landroid/app/AlarmManager;)V

    .line 770
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v2}, Lcom/android/email/service/MailService;->access$700(Lcom/android/email/service/MailService;)I

    move-result v1

    .line 771
    .local v1, serviceId:I
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_2

    .line 772
    long-to-int v1, p7

    .line 774
    :cond_2
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, v1}, Lcom/android/email/service/MailService;->stopSelf(I)V

    .line 776
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #serviceId:I
    :cond_3
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 5
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    const/16 v4, 0x64

    .line 742
    if-nez p1, :cond_0

    if-ne p6, v4, :cond_1

    .line 744
    :cond_0
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, 0x0

    invoke-static {v2, p2, p3, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 746
    .local v0, inboxId:J
    cmp-long v2, p4, v0

    if-nez v2, :cond_1

    .line 747
    if-ne p6, v4, :cond_2

    .line 748
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-virtual {v2, p2, p3, p7}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    .line 749
    if-lez p7, :cond_1

    .line 750
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    invoke-static {v2, p2, p3}, Lcom/android/email/service/MailService;->access$600(Lcom/android/email/service/MailService;J)V

    .line 757
    .end local v0           #inboxId:J
    :cond_1
    :goto_0
    return-void

    .line 753
    .restart local v0       #inboxId:J
    :cond_2
    iget-object v2, p0, Lcom/android/email/service/MailService$ControllerResults;->this$0:Lcom/android/email/service/MailService;

    const/4 v3, -0x1

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/email/service/MailService;->updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;

    goto :goto_0
.end method
