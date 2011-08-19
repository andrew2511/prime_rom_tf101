.class Lcom/android/exchange/adapter/FolderSyncParser$1;
.super Ljava/lang/Object;
.source "FolderSyncParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/FolderSyncParser;

.field final synthetic val$addMailboxes:Ljava/util/ArrayList;

.field final synthetic val$initialSync:Z

.field final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    iput-object p2, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    iput-object p4, p0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 470
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v15, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v14, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v12, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    const/4 v11, 0x0

    .line 476
    .local v11, mailboxCommitCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$addMailboxes:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 478
    .local v10, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget-object v1, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->type:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 481
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$initialSync:Z

    move v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x14

    if-ne v11, v1, :cond_0

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-static {v1, v15, v14, v12, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$000(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 489
    monitor-exit v16

    .line 530
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_2
    return-void

    .line 483
    .restart local v10       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 529
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v11           #mailboxCommitCount:I
    .end local v12           #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .end local v14           #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .end local v15           #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 492
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v11       #mailboxCommitCount:I
    .restart local v12       #mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .restart local v14       #userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .restart local v15       #validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 493
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 495
    const/4 v11, 0x0

    goto :goto_0

    .line 499
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 500
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "syncKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object v1, v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->val$ops:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-static {v1, v15, v14, v12, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->access$000(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->stop()V

    .line 509
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$100(Lcom/android/exchange/adapter/FolderSyncParser;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    invoke-static {v1}, Lcom/android/exchange/adapter/FolderSyncParser;->access$200(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 515
    .local v13, parentServerId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "parentServerId=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 519
    .local v7, c:Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/exchange/provider/MailboxUtilities;->setFlagsAndChildrensParentKey(Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 523
    :cond_6
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 528
    .end local v7           #c:Landroid/database/Cursor;
    .end local v13           #parentServerId:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/FolderSyncParser$1;->this$0:Lcom/android/exchange/adapter/FolderSyncParser;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/exchange/provider/MailboxUtilities;->endMailboxChanges(Landroid/content/Context;J)V

    .line 529
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2
.end method
