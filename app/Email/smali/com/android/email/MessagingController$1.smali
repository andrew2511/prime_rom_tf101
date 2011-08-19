.class Lcom/android/email/MessagingController$1;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    iput-object p2, p0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-wide p3, p0, Lcom/android/email/MessagingController$1;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 256
    const/16 v16, 0x0

    .line 261
    .local v16, localFolderCursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v25

    .line 263
    .local v25, store:Lcom/android/email/mail/Store;
    invoke-virtual/range {v25 .. v25}, Lcom/android/email/mail/Store;->getAllFolders()[Lcom/android/emailcommon/mail/Folder;

    move-result-object v23

    .line 265
    .local v23, remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 266
    .local v22, remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    move-object/from16 v0, v23

    array-length v0, v0

    move v11, v0

    .local v11, count:I
    :goto_0
    if-ge v13, v11, :cond_0

    .line 267
    aget-object v4, v23, v13

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 270
    :cond_0
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v18, localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 273
    .local v17, localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/email/MessagingController$LocalMailboxInfo;->access$200()[Ljava/lang/String;

    move-result-object v6

    const-string v7, "accountKey=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v10, v0

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 279
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    new-instance v15, Lcom/android/email/MessagingController$LocalMailboxInfo;

    invoke-direct/range {v15 .. v16}, Lcom/android/email/MessagingController$LocalMailboxInfo;-><init>(Landroid/database/Cursor;)V

    .line 281
    .local v15, info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    iget-object v4, v15, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v4, v15, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 341
    .end local v11           #count:I
    .end local v13           #i:I
    .end local v15           #info:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v17           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v22           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v25           #store:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v4

    move-object v12, v4

    .line 342
    .local v12, e:Ljava/lang/Exception;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    move-wide v5, v0

    const-string v7, ""

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/GroupMessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    if-eqz v16, :cond_1

    .line 345
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 348
    .end local v12           #e:Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 286
    .restart local v11       #count:I
    .restart local v13       #i:I
    .restart local v17       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v22       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v25       #store:Lcom/android/email/mail/Store;
    :cond_2
    :try_start_2
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 291
    new-instance v21, Ljava/util/HashSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 292
    .local v21, localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {v21 .. v22}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 293
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_3
    :pswitch_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 294
    .local v20, localNameToDrop:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/email/MessagingController$LocalMailboxInfo;

    .line 297
    .local v19, localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    move v4, v0

    packed-switch v4, :pswitch_data_0

    .line 306
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    move-wide v5, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide v7, v0

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 310
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .line 312
    .local v26, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 344
    .end local v11           #count:I
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v17           #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18           #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .end local v19           #localInfo:Lcom/android/email/MessagingController$LocalMailboxInfo;
    .end local v20           #localNameToDrop:Ljava/lang/String;
    .end local v21           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v22           #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23           #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .end local v25           #store:Lcom/android/email/mail/Store;
    .end local v26           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    if-eqz v16, :cond_3

    .line 345
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 318
    .restart local v11       #count:I
    .restart local v13       #i:I
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v17       #localFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18       #localFolders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/MessagingController$LocalMailboxInfo;>;"
    .restart local v21       #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v22       #remoteFolderNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v23       #remoteFolders:[Lcom/android/emailcommon/mail/Folder;
    .restart local v25       #store:Lcom/android/email/mail/Store;
    :cond_4
    :try_start_3
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 319
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 320
    .local v24, remoteNameToAdd:Ljava/lang/String;
    new-instance v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 321
    .local v10, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, v24

    move-object v1, v10

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object v4, v0

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v4, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/email/LegacyConversions;->inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iput v4, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 334
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 336
    const/16 v4, 0x19

    iput v4, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_4

    .line 340
    .end local v10           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v21           #localsToDrop:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #remoteNameToAdd:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$1;->this$0:Lcom/android/email/MessagingController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$1;->val$accountId:J

    move-wide v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->listFoldersFinished(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 344
    if-eqz v16, :cond_1

    .line 345
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
