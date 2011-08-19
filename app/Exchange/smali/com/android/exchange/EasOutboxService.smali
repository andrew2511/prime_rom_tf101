.class public Lcom/android/exchange/EasOutboxService;
.super Lcom/android/exchange/EasSyncService;
.source "EasOutboxService.java"


# static fields
.field public static final BODY_SOURCE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sourceMessageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "_context"
    .parameter "_mailbox"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 67
    return-void
.end method

.method private sendCallback(JLjava/lang/String;I)V
    .locals 6
    .parameter "msgId"
    .parameter "subject"
    .parameter "status"

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JLjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sendMessage(Landroid/content/Context;JLcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "msg"

    .prologue
    .line 247
    const/4 v1, 0x4

    invoke-static {p0, p1, p2, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 248
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 249
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    iput-wide v1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 250
    iput-wide p1, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 251
    invoke-virtual {p3, p0}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method generateSmartSendCmd(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "reply"
    .parameter "itemId"
    .parameter "collectionId"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "SmartReply"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p2, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&CollectionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-static {p3, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "SmartForward"

    goto :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/exchange/EasOutboxService;->setupService()Z

    .line 198
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    .line 200
    .local v7, cacheDir:Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasOutboxService;->mDeviceId:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 205
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 207
    .local v9, msgId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p0, v7, v9, v10}, Lcom/android/exchange/EasOutboxService;->sendMessage(Ljava/io/File;J)I

    move-result v11

    .line 215
    .local v11, result:I
    const/16 v0, 0x16

    if-ne v11, v0, :cond_1

    .line 216
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 235
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 236
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #msgId:J
    .end local v11           #result:I
    :goto_0
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 238
    return-void

    .line 218
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    .restart local v11       #result:I
    :cond_1
    const/16 v0, 0x15

    if-ne v11, v0, :cond_0

    .line 219
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 235
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 225
    .end local v9           #msgId:J
    .end local v11           #result:I
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 228
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 229
    .local v8, e:Ljava/io/IOException;
    const/4 v0, 0x1

    :try_start_6
    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 235
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 225
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 235
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 230
    .end local v6           #c:Landroid/database/Cursor;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 231
    .local v8, e:Ljava/lang/Exception;
    :try_start_8
    const-string v0, "Exception caught in EasOutboxService"

    invoke-virtual {p0, v0, v8}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 232
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 234
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ": sync finished"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 235
    const-string v0, "Outbox exited with status "

    iget v1, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 234
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/exchange/EasOutboxService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ": sync finished"

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 235
    const-string v1, "Outbox exited with status "

    iget v2, p0, Lcom/android/exchange/EasOutboxService;->mExitStatus:I

    invoke-virtual {p0, v1, v2}, Lcom/android/exchange/EasOutboxService;->userLog(Ljava/lang/String;I)V

    .line 236
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 234
    throw v0
.end method

.method sendMessage(Ljava/io/File;J)I
    .locals 31
    .parameter "cacheDir"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 94
    const-string v5, "eas_"

    const-string v6, "tmp"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v30

    .line 97
    .local v30, tmpFile:Ljava/io/File;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "flags"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "subject"

    aput-object v9, v7, v8

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 99
    .local v16, cols:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 100
    .local v19, flags:I
    const/4 v5, 0x1

    aget-object v29, v16, v5

    .line 102
    .local v29, subject:Ljava/lang/String;
    and-int/lit8 v5, v19, 0x1

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v26, v5

    .line 103
    .local v26, reply:Z
    :goto_0
    and-int/lit8 v5, v19, 0x2

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 105
    .local v20, forward:Z
    :goto_1
    const/16 v23, 0x0

    .line 106
    .local v23, itemId:Ljava/lang/String;
    const/4 v15, 0x0

    .line 107
    .local v15, collectionId:Ljava/lang/String;
    if-nez v26, :cond_0

    if-eqz v20, :cond_1

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/exchange/EasOutboxService;->BODY_SOURCE_PROJECTION:[Ljava/lang/String;

    const-string v8, "messageKey=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 111
    if-eqz v16, :cond_1

    .line 112
    const/4 v5, 0x0

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 114
    .local v24, refId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "syncServerId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "mailboxKey"

    aput-object v9, v7, v8

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, v24

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 116
    if-eqz v16, :cond_1

    .line 117
    const/4 v5, 0x0

    aget-object v23, v16, v5

    .line 118
    const/4 v5, 0x1

    aget-object v5, v16, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 120
    .local v11, boxId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "serverId"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v11, v12, v7}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 122
    if-eqz v16, :cond_1

    .line 123
    const/4 v5, 0x0

    aget-object v15, v16, v5

    .line 130
    .end local v11           #boxId:J
    .end local v24           #refId:J
    :cond_1
    if-eqz v23, :cond_7

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    move v9, v5

    .line 134
    .local v9, smartSend:Z
    :goto_2
    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v5, v0

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2

    .line 135
    const/4 v9, 0x0

    .line 139
    :cond_2
    new-instance v8, Ljava/io/FileOutputStream;

    move-object v0, v8

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    .local v8, fileStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v10, 0x1

    move-wide/from16 v6, p2

    invoke-static/range {v5 .. v10}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 141
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 144
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    .local v22, inputStream:Ljava/io/FileInputStream;
    new-instance v21, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->length()J

    move-result-wide v5

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 149
    .local v21, inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v13, "SendMail"

    .line 150
    .local v13, cmd:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v23

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->generateSmartSendCmd(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 153
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&SaveInSent=T"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 155
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send cmd: "

    .end local v8           #fileStream:Ljava/io/FileOutputStream;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 156
    const v5, 0xdbba0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v21

    move v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/EasOutboxService;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v27

    .line 158
    .local v27, resp:Lorg/apache/http/HttpResponse;
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->close()V

    .line 159
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 160
    .local v14, code:I
    const/16 v5, 0xc8

    if-ne v14, v5, :cond_8

    .line 161
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting message..."

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    const/16 v28, 0x0

    .line 165
    .local v28, result:I
    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-wide v1, v5

    move-object/from16 v3, v29

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_3
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 192
    :cond_4
    return v28

    .line 102
    .end local v9           #smartSend:Z
    .end local v13           #cmd:Ljava/lang/String;
    .end local v14           #code:I
    .end local v15           #collectionId:Ljava/lang/String;
    .end local v20           #forward:Z
    .end local v21           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v22           #inputStream:Ljava/io/FileInputStream;
    .end local v23           #itemId:Ljava/lang/String;
    .end local v26           #reply:Z
    .end local v27           #resp:Lorg/apache/http/HttpResponse;
    .end local v28           #result:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v26, v5

    goto/16 :goto_0

    .line 103
    .restart local v26       #reply:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_1

    .line 130
    .restart local v15       #collectionId:Ljava/lang/String;
    .restart local v20       #forward:Z
    .restart local v23       #itemId:Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    move v9, v5

    goto/16 :goto_2

    .line 167
    .restart local v9       #smartSend:Z
    .restart local v13       #cmd:Ljava/lang/String;
    .restart local v14       #code:I
    .restart local v21       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v22       #inputStream:Ljava/io/FileInputStream;
    .restart local v27       #resp:Lorg/apache/http/HttpResponse;
    :cond_8
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message sending failed, code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->userLog([Ljava/lang/String;)V

    .line 168
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v17, cv:Landroid/content/ContentValues;
    const-string v5, "syncServerId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/EasOutboxService;->mContext:Landroid/content/Context;

    move-object v5, v0

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-wide/from16 v2, p2

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    .line 174
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/exchange/EasOutboxService;->isAuthError(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 175
    const/16 v28, 0x16

    .line 179
    .restart local v28       #result:I
    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 182
    .end local v9           #smartSend:Z
    .end local v13           #cmd:Ljava/lang/String;
    .end local v14           #code:I
    .end local v15           #collectionId:Ljava/lang/String;
    .end local v16           #cols:[Ljava/lang/String;
    .end local v17           #cv:Landroid/content/ContentValues;
    .end local v19           #flags:I
    .end local v20           #forward:Z
    .end local v21           #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v22           #inputStream:Ljava/io/FileInputStream;
    .end local v23           #itemId:Ljava/lang/String;
    .end local v26           #reply:Z
    .end local v27           #resp:Lorg/apache/http/HttpResponse;
    .end local v28           #result:I
    .end local v29           #subject:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 184
    .local v18, e:Ljava/io/IOException;
    const/4 v5, 0x0

    const/16 v6, 0x20

    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/EasOutboxService;->sendCallback(JLjava/lang/String;I)V

    .line 185
    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 188
    .end local v18           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 189
    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->delete()Z

    .line 188
    :cond_9
    throw v5

    .line 177
    .restart local v9       #smartSend:Z
    .restart local v13       #cmd:Ljava/lang/String;
    .restart local v14       #code:I
    .restart local v15       #collectionId:Ljava/lang/String;
    .restart local v16       #cols:[Ljava/lang/String;
    .restart local v17       #cv:Landroid/content/ContentValues;
    .restart local v19       #flags:I
    .restart local v20       #forward:Z
    .restart local v21       #inputEntity:Lorg/apache/http/entity/InputStreamEntity;
    .restart local v22       #inputStream:Ljava/io/FileInputStream;
    .restart local v23       #itemId:Ljava/lang/String;
    .restart local v26       #reply:Z
    .restart local v27       #resp:Lorg/apache/http/HttpResponse;
    .restart local v29       #subject:Ljava/lang/String;
    :cond_a
    const/16 v28, 0x0

    .restart local v28       #result:I
    goto :goto_4
.end method
