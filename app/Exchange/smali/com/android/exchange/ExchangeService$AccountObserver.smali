.class Lcom/android/exchange/ExchangeService$AccountObserver;
.super Landroid/database/ContentObserver;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountObserver"
.end annotation


# instance fields
.field mEasAccountSelector:Ljava/lang/String;

.field mSyncableEasMailboxSelector:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V
    .locals 9
    .parameter
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    .line 556
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    .line 557
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 553
    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 554
    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 559
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 560
    .local v2, context:Landroid/content/Context;
    iget-object v4, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v4

    .line 561
    :try_start_0
    iget-object v5, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-static {v2, v5}, Lcom/android/exchange/ExchangeService;->access$300(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    .line 563
    iget-object v5, p1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 564
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accountKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 566
    .local v1, cnt:I
    if-nez v1, :cond_0

    .line 567
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-direct {p0, v5, v6}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(J)V

    goto :goto_0

    .line 570
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #cnt:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    return-void
.end method

.method static synthetic access$400(Lcom/android/exchange/ExchangeService$AccountObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService$AccountObserver;->onAccountChanged()V

    return-void
.end method

.method private addAccountMailbox(J)V
    .locals 5
    .parameter "acctId"

    .prologue
    .line 716
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 717
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 718
    .local v1, main:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-string v2, "__eas"

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__eas"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 720
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 721
    const/16 v2, 0x44

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 722
    const/4 v2, -0x2

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 723
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 724
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 726
    return-void
.end method

.method private onAccountChanged()V
    .locals 22

    .prologue
    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/exchange/ExchangeService;->maybeStartExchangeServiceThread()V

    .line 629
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 633
    .local v8, context:Landroid/content/Context;
    new-instance v14, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v14}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    invoke-static {v8, v14}, Lcom/android/exchange/ExchangeService;->access$300(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v9

    .line 634
    .local v9, currentAccounts:Lcom/android/exchange/ExchangeService$AccountList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v14

    .line 635
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v15}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 636
    .local v5, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    move v6, v15

    .line 640
    .local v6, accountIncomplete:Z
    :goto_1
    iget-wide v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-object v0, v9

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v15

    if-nez v15, :cond_2

    if-nez v6, :cond_2

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;JZ)V

    .line 644
    new-instance v7, Landroid/accounts/Account;

    iget-object v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v16, "com.android.exchange"

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    .local v7, acct:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    invoke-static {v15}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v15

    move-object v1, v7

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 648
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 649
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_0

    .line 701
    .end local v5           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v6           #accountIncomplete:Z
    .end local v7           #acct:Landroid/accounts/Account;
    .end local v12           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v15

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 636
    .restart local v5       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v15, 0x0

    move v6, v15

    goto :goto_1

    .line 652
    .restart local v6       #accountIncomplete:Z
    :cond_2
    :try_start_1
    iget-wide v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-object v0, v8

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v13

    .line 654
    .local v13, updatedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v13, :cond_0

    .line 655
    iget v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    move-object v0, v13

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    iget v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    move-object v0, v13

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 659
    :cond_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .local v10, cv:Landroid/content/ContentValues;
    const-string v15, "syncInterval"

    move-object v0, v13

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v10

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v17, "accountKey=? and type = 0"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Account "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v5

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " changed; stop syncs"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    invoke-static/range {v15 .. v18}, Lcom/android/exchange/ExchangeService;->access$200(Lcom/android/exchange/ExchangeService;JZ)V

    .line 671
    .end local v10           #cv:Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->onSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->onSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    move-object v0, v15

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 677
    :cond_5
    iget v15, v13, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 678
    iget v15, v13, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    iput v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 679
    iget v15, v13, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    iput v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto/16 :goto_0

    .line 683
    .end local v5           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v6           #accountIncomplete:Z
    .end local v13           #updatedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_6
    invoke-virtual {v9}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 684
    .restart local v5       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/exchange/ExchangeService$AccountList;->contains(J)Z

    move-result v15

    if-nez v15, :cond_7

    .line 686
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v11

    .line 688
    .local v11, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v11, :cond_7

    .line 689
    iput-object v11, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 691
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Account observer found new account: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v5

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 692
    iget-wide v15, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService$AccountObserver;->addAccountMailbox(J)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v15, v5}, Lcom/android/exchange/ExchangeService$AccountList;->add(Ljava/lang/Object;)Z

    .line 694
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 695
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    goto :goto_2

    .line 699
    .end local v5           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v11           #ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v15}, Lcom/android/exchange/ExchangeService$AccountList;->clear()V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    move-object v15, v0

    iget-object v15, v15, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v15, v9}, Lcom/android/exchange/ExchangeService$AccountList;->addAll(Ljava/util/Collection;)Z

    .line 701
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 704
    const-string v14, "account changed"

    invoke-static {v14}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method private onSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 1
    .parameter "account"

    .prologue
    .line 624
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAccountKeyWhere()Ljava/lang/String;
    .locals 7

    .prologue
    .line 604
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 607
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v4

    .line 608
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v5, v5, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 609
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 610
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 614
    :goto_1
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 616
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 612
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 616
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    .line 620
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mEasAccountSelector:Ljava/lang/String;

    return-object v4
.end method

.method public getSyncableEasMailboxWhere()Ljava/lang/String;
    .locals 7

    .prologue
    .line 579
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 580
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(type=4 or syncInterval!=-1) and accountKey in ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 582
    .local v1, first:Z
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v4, v4, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v4

    .line 583
    :try_start_0
    iget-object v5, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->this$0:Lcom/android/exchange/ExchangeService;

    iget-object v5, v5, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v5}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 584
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 585
    const/16 v5, 0x2c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 589
    :goto_1
    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 591
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 587
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 591
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    .line 595
    .end local v1           #first:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v4, p0, Lcom/android/exchange/ExchangeService$AccountObserver;->mSyncableEasMailboxSelector:Ljava/lang/String;

    return-object v4
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 709
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/exchange/ExchangeService$AccountObserver$1;

    invoke-direct {v1, p0}, Lcom/android/exchange/ExchangeService$AccountObserver$1;-><init>(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    const-string v2, "Account Observer"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 713
    return-void
.end method
