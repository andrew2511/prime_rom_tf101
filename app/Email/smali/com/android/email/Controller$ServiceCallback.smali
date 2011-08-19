.class Lcom/android/email/Controller$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method private constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1422
    invoke-direct {p0, p1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;)V

    return-void
.end method

.method private mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;
    .locals 2
    .parameter "statusCode"

    .prologue
    .line 1527
    sparse-switch p1, :sswitch_data_0

    .line 1551
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 1532
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1535
    :sswitch_1
    new-instance v0, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1538
    :sswitch_2
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1541
    :sswitch_3
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    goto :goto_0

    .line 1527
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_3
        0x18 -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public loadAttachmentStatus(JJII)V
    .locals 13
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1428
    move-object v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    .line 1429
    .local v3, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p5, :pswitch_data_0

    .line 1444
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v4

    .line 1445
    .local v4, accountId:J
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 1446
    :try_start_0
    iget-object v6, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v6}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/Controller$Result;

    .local v2, listener:Lcom/android/email/Controller$Result;
    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p6

    .line 1447
    invoke-virtual/range {v2 .. v10}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 1450
    .end local v2           #listener:Lcom/android/email/Controller$Result;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1431
    .end local v4           #accountId:J
    :pswitch_0
    const/16 p6, 0x64

    .line 1432
    goto :goto_0

    .line 1439
    :pswitch_1
    if-ltz p6, :cond_1

    const/16 v6, 0x64

    move/from16 v0, p6

    move v1, v6

    if-lt v0, v1, :cond_0

    .line 1451
    :cond_1
    :goto_2
    return-void

    .line 1450
    .restart local v4       #accountId:J
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 9
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1461
    const-wide/16 v2, -0x1

    .line 1462
    .local v2, accountId:J
    invoke-direct {p0, p4}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 1463
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p4, :pswitch_data_0

    .line 1474
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1475
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, listener:Lcom/android/email/Controller$Result;
    move-wide v4, p1

    move v6, p5

    .line 1476
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1

    .line 1478
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1465
    :pswitch_0
    const/16 p5, 0x64

    .line 1466
    goto :goto_0

    .line 1469
    :pswitch_1
    if-ltz p5, :cond_1

    const/16 v4, 0x64

    if-lt p5, v4, :cond_0

    .line 1479
    :cond_1
    :goto_2
    return-void

    .line 1478
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1463
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxListStatus(JII)V
    .locals 5
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1482
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    .line 1483
    .local v2, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 1494
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    .line 1495
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1496
    .local v1, listener:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, v2, p1, p2, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_1

    .line 1498
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1485
    :pswitch_0
    const/16 p4, 0x64

    .line 1486
    goto :goto_0

    .line 1489
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v3, 0x64

    if-lt p4, v3, :cond_0

    .line 1499
    :cond_1
    :goto_2
    return-void

    .line 1498
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public syncMailboxStatus(JII)V
    .locals 11
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 1502
    invoke-direct {p0, p3}, Lcom/android/email/Controller$ServiceCallback;->mapStatusToException(I)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    .line 1503
    .local v1, result:Lcom/android/emailcommon/mail/MessagingException;
    packed-switch p3, :pswitch_data_0

    .line 1515
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 1517
    .local v9, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v9, :cond_2

    .line 1524
    .end local v9           #mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    :goto_1
    return-void

    .line 1505
    :pswitch_0
    const/16 p4, 0x64

    .line 1506
    goto :goto_0

    .line 1509
    :pswitch_1
    if-ltz p4, :cond_1

    const/16 v4, 0x64

    if-lt p4, v4, :cond_0

    goto :goto_1

    .line 1518
    .restart local v9       #mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 1519
    .local v2, accountId:J
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1520
    :try_start_0
    iget-object v4, p0, Lcom/android/email/Controller$ServiceCallback;->this$0:Lcom/android/email/Controller;

    invoke-static {v4}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1521
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    move-wide v4, p1

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_2

    .line 1523
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
