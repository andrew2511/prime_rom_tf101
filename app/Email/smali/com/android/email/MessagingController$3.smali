.class Lcom/android/email/MessagingController$3;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field final synthetic val$localMapCopy:Ljava/util/HashMap;

.field final synthetic val$newMessages:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$3;->val$localMapCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object p4, p0, Lcom/android/email/MessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p5, p0, Lcom/android/email/MessagingController$3;->val$newMessages:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 660
    return-void
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController$3;->val$localMapCopy:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 626
    .local v7, localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    const/4 v0, 0x0

    .line 627
    .local v0, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v7, :cond_1

    .line 628
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 637
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-object v1, p0, Lcom/android/email/MessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 640
    iget-object v1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    iget-object v2, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v2}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/email/MessagingController;->access$600(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 642
    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/email/MessagingController$3;->val$newMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 656
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_0
    :goto_1
    return-void

    .line 630
    .restart local v0       #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v7       #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/email/MessagingController$3;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v7, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 646
    .local v8, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 652
    .end local v0           #localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v7           #localMessageInfo:Lcom/android/email/MessagingController$LocalMessageInfo;
    .end local v8           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 653
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
