.class Lcom/android/email/Controller$ControllerService$1;
.super Lcom/android/emailcommon/service/IEmailService$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller$ControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller$ControllerService;


# direct methods
.method constructor <init>(Lcom/android/email/Controller$ControllerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "userName"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1626
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1691
    const/4 v0, 0x0

    return v0
.end method

.method public deleteAccountPIMData(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1711
    return-void
.end method

.method public deleteFolder(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1695
    const/4 v0, 0x0

    return v0
.end method

.method public getApiLevel()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1715
    const/4 v0, 0x1

    return v0
.end method

.method public hostChanged(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1678
    return-void
.end method

.method public loadAttachment(JZ)V
    .locals 17
    .parameter "attachmentId"
    .parameter "background"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    move-object v4, v0

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v14

    .line 1639
    .local v14, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v14, :cond_1

    .line 1640
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1641
    const-string v4, "Controller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAttachment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    move-object v4, v0

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 1645
    .local v16, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v16, :cond_3

    .line 1649
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move v4, v0

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    move-object v4, v0

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/Controller;->access$900()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "messageKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1653
    .local v15, cols:[Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$ControllerService$1;->this$0:Lcom/android/email/Controller$ControllerService;

    move-object v4, v0

    const/4 v5, 0x0

    aget-object v5, v15, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 1656
    if-nez v16, :cond_2

    .line 1672
    .end local v15           #cols:[Ljava/lang/String;
    .end local v16           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_1
    :goto_0
    return-void

    .line 1662
    .restart local v16       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v3

    .line 1663
    .local v3, legacyController:Lcom/android/email/MessagingController;
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v12

    .line 1664
    .local v12, legacyListener:Lcom/android/email/Controller$LegacyListener;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide v4, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-wide v6, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide v8, v0

    move-wide/from16 v10, p1

    move/from16 v13, p3

    invoke-virtual/range {v3 .. v13}, Lcom/android/email/MessagingController;->loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V

    goto :goto_0

    .line 1668
    .end local v3           #legacyController:Lcom/android/email/MessagingController;
    .end local v12           #legacyListener:Lcom/android/email/Controller$LegacyListener;
    :cond_3
    invoke-static {}, Lcom/android/email/Controller;->access$1000()Lcom/android/email/Controller;

    move-result-object v4

    invoke-static {v4}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-wide/from16 v7, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V

    goto :goto_0
.end method

.method public loadMore(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1687
    return-void
.end method

.method public moveMessage(JJ)V
    .locals 0
    .parameter "messageId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1708
    return-void
.end method

.method public renameFolder(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1700
    const/4 v0, 0x0

    return v0
.end method

.method public sendMeetingResponse(JI)V
    .locals 0
    .parameter "messageId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1684
    return-void
.end method

.method public setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1704
    invoke-static {}, Lcom/android/email/Controller;->access$800()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1705
    return-void
.end method

.method public setLogging(I)V
    .locals 0
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1681
    return-void
.end method

.method public startSync(JZ)V
    .locals 0
    .parameter "mailboxId"
    .parameter "userRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1630
    return-void
.end method

.method public stopSync(J)V
    .locals 0
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1633
    return-void
.end method

.method public updateFolderList(J)V
    .locals 0
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1675
    return-void
.end method

.method public validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)Landroid/os/Bundle;
    .locals 1
    .parameter "protocol"
    .parameter "host"
    .parameter "userName"
    .parameter "password"
    .parameter "port"
    .parameter "ssl"
    .parameter "trustCertificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1622
    const/4 v0, 0x0

    return-object v0
.end method
