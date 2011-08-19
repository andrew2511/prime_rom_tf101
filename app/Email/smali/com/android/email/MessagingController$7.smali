.class Lcom/android/email/MessagingController$7;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadMessageForView(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 1798
    :try_start_0
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 1800
    .local v4, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v4, :cond_0

    .line 1801
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    const-string v12, "Unknown message"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    .line 1865
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 1804
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    if-ne v9, v12, :cond_1

    .line 1805
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    invoke-virtual {v9, v10, v11}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1859
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 1861
    .local v3, me:Lcom/android/emailcommon/mail/MessagingException;
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_0

    .line 1812
    .end local v3           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1814
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 1816
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 1817
    :cond_2
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    const-string v12, "null account or mailbox"

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1862
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v9

    move-object v8, v9

    .line 1863
    .local v8, rte:Ljava/lang/RuntimeException;
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_0

    .line 1821
    .end local v8           #rte:Ljava/lang/RuntimeException;
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    :try_start_2
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v10}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v7

    .line 1823
    .local v7, remoteStore:Lcom/android/email/mail/Store;
    iget-object v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 1824
    .local v5, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v9, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1847
    iget-object v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 1848
    .local v6, remoteMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1849
    .local v1, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1850
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1853
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v0, v2, v10}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    .line 1857
    iget-object v9, p0, Lcom/android/email/MessagingController$7;->this$0:Lcom/android/email/MessagingController;

    invoke-static {v9}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/email/MessagingController$7;->val$messageId:J

    invoke-virtual {v9, v10, v11}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
