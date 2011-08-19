.class Lcom/android/email/MessagingController$8;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$attachmentId:J

.field final synthetic val$background:Z

.field final synthetic val$mailboxId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJJZJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$8;->val$accountId:J

    iput-wide p6, p0, Lcom/android/email/MessagingController$8;->val$messageId:J

    iput-boolean p8, p0, Lcom/android/email/MessagingController$8;->val$background:Z

    iput-wide p9, p0, Lcom/android/email/MessagingController$8;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 1884
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v15

    .line 1886
    .local v15, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v15, :cond_0

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v10, v0

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "The attachment is null"

    invoke-direct {v12, v13}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController$8;->val$background:Z

    move v13, v0

    invoke-virtual/range {v5 .. v13}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 1968
    .end local v15           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_0
    return-void

    .line 1892
    .restart local v15       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v15}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v10, v0

    invoke-virtual/range {v5 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1961
    .end local v15           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v5

    move-object v12, v5

    .line 1963
    .local v12, me:Lcom/android/emailcommon/mail/MessagingException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v10, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController$8;->val$background:Z

    move v13, v0

    invoke-virtual/range {v5 .. v13}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    goto :goto_0

    .line 1899
    .end local v12           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v15       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v14

    .line 1901
    .local v14, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$mailboxId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v18

    .line 1903
    .local v18, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v6, v0

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v19

    .line 1906
    .local v19, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v14, :cond_2

    if-eqz v18, :cond_2

    if-nez v19, :cond_3

    .line 1907
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v10, v0

    new-instance v12, Lcom/android/emailcommon/mail/MessagingException;

    const-string v13, "Account, mailbox, message or attachment are null"

    invoke-direct {v12, v13}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/MessagingController$8;->val$background:Z

    move v13, v0

    invoke-virtual/range {v5 .. v13}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1965
    .end local v14           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v15           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v18           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v19           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 1966
    .local v17, ioe:Ljava/io/IOException;
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while storing attachment."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1914
    .end local v17           #ioe:Ljava/io/IOException;
    .restart local v14       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v15       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v18       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v19       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v22

    .line 1916
    .local v22, remoteStore:Lcom/android/email/mail/Store;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v21

    .line 1917
    .local v21, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1921
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v23

    .line 1922
    .local v23, storeMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v24, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct/range {v24 .. v24}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 1923
    .local v24, storePart:Lcom/android/emailcommon/internet/MimeBodyPart;
    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v5, v5

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 1924
    const-string v5, "X-Android-Attachment-StoreData"

    iget-object v6, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    const-string v5, "Content-Type"

    const-string v6, "%s;\n name=\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string v5, "Content-Transfer-Encoding"

    const-string v6, "base64"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    new-instance v20, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v20 .. v20}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 1935
    .local v20, multipart:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v5, "mixed"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1936
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 1938
    const-string v5, "Content-Type"

    const-string v6, "multipart/mixed"

    move-object/from16 v0, v23

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1942
    new-instance v16, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1943
    .local v16, fp:Lcom/android/emailcommon/mail/FetchProfile;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1944
    const/4 v5, 0x1

    new-array v11, v5, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v23, v11, v5

    new-instance v5, Lcom/android/email/Controller$MessageRetrievalListenerBridge;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/MessagingController;->access$800(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/email/Controller$MessageRetrievalListenerBridge;-><init>(Lcom/android/email/Controller;JJ)V

    move-object/from16 v0, v21

    move-object v1, v11

    move-object/from16 v2, v16

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1950
    invoke-virtual/range {v24 .. v24}, Lcom/android/emailcommon/internet/MimeBodyPart;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1951
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const-string v6, "Attachment not loaded."

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1955
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object v2, v15

    move-wide v3, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$8;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$accountId:J

    move-wide v6, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$messageId:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$8;->val$attachmentId:J

    move-wide v10, v0

    invoke-virtual/range {v5 .. v11}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFinished(JJJ)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
