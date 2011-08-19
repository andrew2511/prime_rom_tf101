.class public Lcom/android/email/Controller$LegacyListener;
.super Lcom/android/email/MessagingListener;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    .line 1214
    return-void
.end method


# virtual methods
.method public checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1289
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1290
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 1292
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1293
    return-void
.end method

.method public checkMailStarted(Landroid/content/Context;JJ)V
    .locals 11
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 1279
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1280
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1281
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-wide v2, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 1283
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1284
    return-void
.end method

.method public listFoldersFailed(JLjava/lang/String;)V
    .locals 5
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 1227
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 1228
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1229
    .local v1, l:Lcom/android/email/Controller$Result;
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v3, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 1231
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1232
    return-void
.end method

.method public listFoldersFinished(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 1236
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 1237
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1238
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-virtual {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 1240
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1241
    return-void
.end method

.method public listFoldersStarted(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 1218
    iget-object v2, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v2}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    .line 1219
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1220
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, p2, v4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 1222
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    return-void
.end method

.method public loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 17
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 1362
    const/16 v6, 0x11

    .line 1363
    .local v6, status:I
    if-eqz p7, :cond_0

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Lcom/android/emailcommon/mail/MessagingException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 1364
    const/16 v6, 0x20

    .line 1366
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v1, v0

    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v1

    const/4 v7, 0x0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v1, v0

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 1370
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/Controller$Result;

    .line 1378
    .local v7, listener:Lcom/android/email/Controller$Result;
    if-eqz p8, :cond_1

    const/4 v2, 0x0

    move-object v8, v2

    :goto_2
    const/4 v15, 0x0

    move-wide/from16 v9, p1

    move-wide/from16 v11, p3

    move-wide/from16 v13, p5

    invoke-virtual/range {v7 .. v15}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 1381
    .end local v7           #listener:Lcom/android/email/Controller$Result;
    .end local v16           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v7       #listener:Lcom/android/email/Controller$Result;
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v8, p7

    .line 1378
    goto :goto_2

    .line 1381
    .end local v7           #listener:Lcom/android/email/Controller$Result;
    :cond_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1382
    return-void

    .line 1367
    .end local v16           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public loadAttachmentFinished(JJJ)V
    .locals 11
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 1344
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-wide v1, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :goto_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1349
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1350
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v8, 0x64

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 1352
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1353
    return-void

    .line 1346
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public loadAttachmentStarted(JJJZ)V
    .locals 11
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 1330
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$700(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide v1, p3

    move-wide/from16 v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1335
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1336
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v8, 0x0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 1338
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1339
    return-void

    .line 1332
    .end local v9           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 9
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 1317
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 1318
    .local v2, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1319
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1320
    .local v0, listener:Lcom/android/email/Controller$Result;
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1323
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1324
    return-void
.end method

.method public loadMessageForViewFinished(J)V
    .locals 9
    .parameter "messageId"

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 1308
    .local v2, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1309
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1310
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1312
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1313
    return-void
.end method

.method public loadMessageForViewStarted(J)V
    .locals 9
    .parameter "messageId"

    .prologue
    .line 1297
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 1298
    .local v2, accountId:J
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8

    .line 1299
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1300
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1302
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    return-void
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    .line 1395
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1396
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1397
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    const/16 v6, 0x64

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1399
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1395
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1399
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1400
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 10
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_0
    instance-of v3, p5, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v3, :cond_0

    .line 1407
    move-object v0, p5

    check-cast v0, Lcom/android/emailcommon/mail/MessagingException;

    move-object v2, v0

    .line 1411
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1412
    :try_start_1
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1413
    .local v1, listener:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_1

    .line 1415
    .end local v1           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1406
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1409
    :cond_0
    :try_start_3
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    goto :goto_0

    .line 1415
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1416
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1387
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1388
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 1390
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1386
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1390
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1391
    monitor-exit p0

    return-void
.end method

.method public synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 11
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 1265
    move-object/from16 v0, p5

    instance-of v0, v0, Lcom/android/emailcommon/mail/MessagingException;

    move v3, v0

    if-eqz v3, :cond_0

    .line 1266
    move-object/from16 v0, p5

    check-cast v0, Lcom/android/emailcommon/mail/MessagingException;

    move-object v2, v0

    .line 1270
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v10

    monitor-enter v10

    .line 1271
    :try_start_0
    iget-object v3, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 1272
    .local v1, l:Lcom/android/email/Controller$Result;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_1

    .line 1274
    .end local v1           #l:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1268
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :cond_0
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .restart local v2       #me:Lcom/android/emailcommon/mail/MessagingException;
    goto :goto_0

    .line 1274
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    return-void
.end method

.method public synchronizeMailboxFinished(JJII)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 1256
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1257
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    .line 1259
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    return-void
.end method

.method public synchronizeMailboxStarted(JJ)V
    .locals 10
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 1245
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v9

    monitor-enter v9

    .line 1246
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller$LegacyListener;->this$0:Lcom/android/email/Controller;

    invoke-static {v1}, Lcom/android/email/Controller;->access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 1247
    .local v0, l:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    .line 1249
    .end local v0           #l:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    return-void
.end method
