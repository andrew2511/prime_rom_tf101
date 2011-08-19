.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

.field static final NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private final mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 50
    new-instance v0, Lcom/android/emailcommon/service/PolicySet;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZIIIZ)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 83
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 84
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 85
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    .line 86
    return-void
.end method

.method static findShortestExpiration(Landroid/content/Context;)J
    .locals 14
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 626
    const-wide/16 v9, -0x1

    .line 627
    .local v9, nextExpiringAccountId:J
    const-wide v12, 0x7fffffffffffffffL

    .line 628
    .local v12, shortestExpiration:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const-string v3, "securityFlags IS NOT NULL AND securityFlags!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    .local v6, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 633
    .local v7, flags:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    .line 634
    new-instance v11, Lcom/android/emailcommon/service/PolicySet;

    invoke-direct {v11, v7, v8}, Lcom/android/emailcommon/service/PolicySet;-><init>(J)V

    .line 635
    .local v11, p:Lcom/android/emailcommon/service/PolicySet;
    iget v0, v11, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v0, :cond_0

    iget v0, v11, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v0, v0

    cmp-long v0, v0, v12

    if-gez v0, :cond_0

    .line 637
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 638
    iget v0, v11, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v12, v0

    goto :goto_0

    .line 643
    .end local v7           #flags:J
    .end local v11           #p:Lcom/android/emailcommon/service/PolicySet;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 645
    return-wide v9

    .line 643
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    const-class v0, Lcom/android/email/SecurityPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Lcom/android/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 75
    :cond_0
    sget-object v1, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "message"

    .prologue
    .line 690
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 691
    .local v0, instance:Lcom/android/email/SecurityPolicy;
    packed-switch p1, :pswitch_data_0

    .line 711
    :goto_0
    return-void

    .line 693
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 696
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 701
    :pswitch_2
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 703
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    .line 704
    .local v1, nc:Lcom/android/email/NotificationController;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    .line 705
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    goto :goto_0

    .line 708
    .end local v1           #nc:Lcom/android/email/NotificationController;
    :pswitch_3
    iget-object v2, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 574
    invoke-static/range {p1 .. p1}, Lcom/android/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v14

    .line 577
    .local v14, nextExpiringAccountId:J
    const-wide/16 v19, -0x1

    cmp-long v10, v14, v19

    if-nez v10, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    move-object v11, v0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v11

    .line 583
    .local v11, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v16, v11, v19

    .line 584
    .local v16, timeUntilExpiration:J
    const-wide/16 v19, 0x0

    cmp-long v10, v16, v19

    if-gez v10, :cond_2

    const/4 v10, 0x1

    move v13, v10

    .line 585
    .local v13, expired:Z
    :goto_1
    if-nez v13, :cond_3

    .line 588
    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    .line 589
    .local v5, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v5, :cond_0

    .line 590
    const/4 v10, 0x0

    move-object/from16 v0, p1

    move-wide v1, v14

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v9

    .line 592
    .local v9, intent:Landroid/content/Intent;
    const v10, 0x7f080121

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .end local v11           #expirationDate:J
    const/4 v12, 0x0

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    .end local v13           #expired:Z
    aput-object v13, v11, v12

    move-object/from16 v0, p1

    move v1, v10

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, ticker:Ljava/lang/String;
    const v10, 0x7f080122

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, contentTitle:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 597
    .local v8, contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v4

    .line 598
    .local v4, nc:Lcom/android/email/NotificationController;
    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 584
    .end local v4           #nc:Lcom/android/email/NotificationController;
    .end local v5           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v6           #ticker:Ljava/lang/String;
    .end local v7           #contentTitle:Ljava/lang/String;
    .end local v8           #contentText:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .restart local v11       #expirationDate:J
    :cond_2
    const/4 v10, 0x0

    move v13, v10

    goto :goto_1

    .line 602
    .restart local v13       #expired:Z
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v10

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z

    move-result v18

    .line 603
    .local v18, wiped:Z
    if-eqz v18, :cond_0

    .line 605
    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    .line 606
    .restart local v5       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v5, :cond_0

    .line 607
    const/4 v10, 0x1

    move-object/from16 v0, p1

    move-wide v1, v14

    move v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v9

    .line 609
    .restart local v9       #intent:Landroid/content/Intent;
    const v10, 0x7f080123

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 610
    .restart local v6       #ticker:Ljava/lang/String;
    const v10, 0x7f080124

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 611
    .restart local v7       #contentTitle:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    .line 612
    .restart local v8       #contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v4

    .line 613
    .restart local v4       #nc:Lcom/android/email/NotificationController;
    const/4 v10, 0x5

    invoke-virtual/range {v4 .. v10}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 431
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 432
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 433
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 435
    :cond_0
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 446
    if-eqz p2, :cond_0

    .line 447
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 451
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 453
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 454
    return-void

    .line 449
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_0
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z
    .locals 14
    .parameter "context"
    .parameter "controller"

    .prologue
    const/4 v4, 0x0

    .line 656
    const/4 v13, 0x0

    .line 657
    .local v13, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const-string v3, "securityFlags IS NOT NULL AND securityFlags!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 660
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 662
    .local v10, flags:J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    .line 663
    new-instance v12, Lcom/android/emailcommon/service/PolicySet;

    invoke-direct {v12, v10, v11}, Lcom/android/emailcommon/service/PolicySet;-><init>(J)V

    .line 664
    .local v12, p:Lcom/android/emailcommon/service/PolicySet;
    iget v0, v12, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v0, :cond_0

    .line 665
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 666
    .local v7, accountId:J
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 667
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    .line 669
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 671
    invoke-virtual {p1, v7, v8}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    const/4 v13, 0x1

    goto :goto_0

    .line 679
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v7           #accountId:J
    .end local v10           #flags:J
    .end local v12           #p:Lcom/android/emailcommon/service/PolicySet;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 681
    return v13

    .line 679
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public clearNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    .line 490
    return-void
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .locals 11
    .parameter "policies"

    .prologue
    .line 246
    move-object v0, p1

    .line 250
    .local v0, result:Lcom/android/emailcommon/service/PolicySet;
    iget-boolean v1, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v10

    .line 252
    .local v10, encryptionStatus:I
    if-nez v10, :cond_0

    .line 254
    new-instance v0, Lcom/android/emailcommon/service/PolicySet;

    .end local v0           #result:Lcom/android/emailcommon/service/PolicySet;
    iget v1, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    iget v2, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    iget v3, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    iget v4, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    iget-boolean v5, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    iget v6, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    iget v7, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    iget v8, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZIIIZ)V

    .line 260
    .end local v10           #encryptionStatus:I
    .restart local v0       #result:Lcom/android/emailcommon/service/PolicySet;
    :cond_0
    return-object v0
.end method

.method computeAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
    .locals 25

    .prologue
    .line 113
    const/16 v21, 0x0

    .line 115
    .local v21, policiesFound:Z
    const/high16 v18, -0x8000

    .line 116
    .local v18, minPasswordLength:I
    const/high16 v20, -0x8000

    .line 117
    .local v20, passwordMode:I
    const v16, 0x7fffffff

    .line 118
    .local v16, maxPasswordFails:I
    const v17, 0x7fffffff

    .line 119
    .local v17, maxScreenLockTime:I
    const/16 v22, 0x0

    .line 120
    .local v22, requireRemoteWipe:Z
    const/high16 v10, -0x8000

    .line 121
    .local v10, passwordHistory:I
    const v9, 0x7fffffff

    .line 122
    .local v9, passwordExpirationDays:I
    const/high16 v11, -0x8000

    .line 123
    .local v11, passwordComplexChars:I
    const/4 v12, 0x0

    .line 125
    .local v12, requireEncryption:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const-string v6, "securityFlags IS NOT NULL AND securityFlags!=0"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .local v13, c:Landroid/database/Cursor;
    move/from16 v8, v22

    .end local v22           #requireRemoteWipe:Z
    .local v8, requireRemoteWipe:Z
    move/from16 v7, v17

    .end local v17           #maxScreenLockTime:I
    .local v7, maxScreenLockTime:I
    move/from16 v6, v16

    .end local v16           #maxPasswordFails:I
    .local v6, maxPasswordFails:I
    move/from16 v5, v20

    .end local v20           #passwordMode:I
    .local v5, passwordMode:I
    move/from16 v4, v18

    .line 128
    .end local v18           #minPasswordLength:I
    .local v4, minPasswordLength:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 130
    .local v14, flags:J
    const-wide/16 v23, 0x0

    cmp-long v3, v14, v23

    if-eqz v3, :cond_0

    .line 131
    new-instance v19, Lcom/android/emailcommon/service/PolicySet;

    move-object/from16 v0, v19

    move-wide v1, v14

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/service/PolicySet;-><init>(J)V

    .line 132
    .local v19, p:Lcom/android/emailcommon/service/PolicySet;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    move v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 133
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    move v3, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 134
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    move v3, v0

    if-lez v3, :cond_1

    .line 135
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    move v3, v0

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 137
    :cond_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    move v3, v0

    if-lez v3, :cond_2

    .line 138
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    move v3, v0

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 140
    :cond_2
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    move v3, v0

    if-lez v3, :cond_3

    .line 141
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    move v3, v0

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 143
    :cond_3
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    move v3, v0

    if-lez v3, :cond_4

    .line 144
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    move v3, v0

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 147
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    move v3, v0

    if-lez v3, :cond_5

    .line 148
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    move v3, v0

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 151
    :cond_5
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    move v3, v0

    or-int/2addr v8, v3

    .line 152
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    move v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v12, v3

    .line 153
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 157
    .end local v14           #flags:J
    .end local v19           #p:Lcom/android/emailcommon/service/PolicySet;
    :cond_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 159
    if-eqz v21, :cond_e

    .line 161
    const/high16 v3, -0x8000

    if-ne v4, v3, :cond_7

    const/4 v4, 0x0

    .line 162
    :cond_7
    const/high16 v3, -0x8000

    if-ne v5, v3, :cond_8

    const/4 v5, 0x0

    .line 163
    :cond_8
    const v3, 0x7fffffff

    if-ne v6, v3, :cond_9

    const/4 v6, 0x0

    .line 164
    :cond_9
    const v3, 0x7fffffff

    if-ne v7, v3, :cond_a

    const/4 v7, 0x0

    .line 165
    :cond_a
    const/high16 v3, -0x8000

    if-ne v10, v3, :cond_b

    const/4 v10, 0x0

    .line 166
    :cond_b
    const v3, 0x7fffffff

    if-ne v9, v3, :cond_c

    const/4 v9, 0x0

    .line 167
    :cond_c
    const/high16 v3, -0x8000

    if-ne v11, v3, :cond_d

    const/4 v11, 0x0

    .line 169
    :cond_d
    new-instance v3, Lcom/android/emailcommon/service/PolicySet;

    invoke-direct/range {v3 .. v12}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZIIIZ)V

    .line 173
    :goto_1
    return-object v3

    .line 157
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 173
    :cond_e
    sget-object v3, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    goto :goto_1
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 537
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "securityFlags!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 540
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secured account(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 547
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 549
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 550
    return-void
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I
    .locals 14
    .parameter "policies"

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object p1

    .line 321
    :cond_0
    sget-object v10, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    if-ne p1, v10, :cond_1

    .line 322
    const/4 v10, 0x0

    .line 385
    :goto_0
    return v10

    .line 324
    :cond_1
    const/4 v7, 0x0

    .line 325
    .local v7, reasons:I
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 326
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 328
    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    if-lez v10, :cond_2

    .line 329
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    if-ge v10, v11, :cond_2

    .line 330
    or-int/lit8 v7, v7, 0x4

    .line 333
    :cond_2
    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    if-lez v10, :cond_4

    .line 334
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordQuality()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 335
    or-int/lit8 v7, v7, 0x4

    .line 337
    :cond_3
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v10

    if-nez v10, :cond_4

    .line 338
    or-int/lit8 v7, v7, 0x4

    .line 341
    :cond_4
    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    if-lez v10, :cond_5

    .line 343
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    iget v12, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    .line 344
    or-int/lit8 v7, v7, 0x2

    .line 347
    :cond_5
    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v10, :cond_8

    .line 349
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 350
    .local v0, currentTimeout:J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_7

    .line 352
    :cond_6
    or-int/lit8 v7, v7, 0x4

    .line 355
    :cond_7
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 356
    .local v4, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v4, v10

    .line 357
    .local v8, timeUntilExpiration:J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_c

    const/4 v10, 0x1

    move v6, v10

    .line 358
    .local v6, expired:Z
    :goto_1
    if-eqz v6, :cond_8

    .line 359
    or-int/lit8 v7, v7, 0x4

    .line 362
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v6           #expired:Z
    .end local v8           #timeUntilExpiration:J
    :cond_8
    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    if-lez v10, :cond_9

    .line 363
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    if-ge v10, v11, :cond_9

    .line 364
    or-int/lit8 v7, v7, 0x4

    .line 367
    :cond_9
    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    if-lez v10, :cond_a

    .line 368
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    if-ge v10, v11, :cond_a

    .line 369
    or-int/lit8 v7, v7, 0x4

    .line 372
    :cond_a
    iget-boolean v10, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v10, :cond_b

    .line 373
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 374
    .local v3, encryptionStatus:I
    const/4 v10, 0x3

    if-eq v3, v10, :cond_b

    .line 375
    or-int/lit8 v7, v7, 0x8

    .end local v3           #encryptionStatus:I
    :cond_b
    move v10, v7

    .line 382
    goto/16 :goto_0

    .line 357
    .restart local v0       #currentTimeout:J
    .restart local v4       #expirationDate:J
    .restart local v8       #timeUntilExpiration:J
    :cond_c
    const/4 v10, 0x0

    move v6, v10

    goto :goto_1

    .line 385
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v8           #timeUntilExpiration:J
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 2
    .parameter "policies"

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v0

    .line 272
    .local v0, reasons:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActiveAdmin()Z
    .locals 3

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 515
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 2
    .parameter "policies"

    .prologue
    .line 226
    iget-boolean v1, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 228
    .local v0, encryptionStatus:I
    if-nez v0, :cond_0

    .line 229
    const/4 v1, 0x0

    .line 232
    .end local v0           #encryptionStatus:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 557
    if-nez p1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 560
    :cond_0
    return-void
.end method

.method public policiesRequired(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    const/4 v6, 0x1

    .line 465
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 467
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 481
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 473
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f08011c

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 475
    .local v2, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f08011d

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, contentTitle:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, contentText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 478
    .local v5, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public reducePolicies()V
    .locals 2

    .prologue
    .line 212
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 213
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 214
    return-void
.end method

.method public remoteWipe()V
    .locals 3

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 498
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 503
    :goto_0
    return-void

    .line 501
    :cond_0
    const-string v1, "Email"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivePolicies()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 396
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    .line 398
    .local v1, policies:Lcom/android/emailcommon/service/PolicySet;
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    if-ne v1, v2, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordQuality()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 404
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 406
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 408
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 410
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 413
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 419
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 420
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 421
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v3, v1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 423
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v3, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public declared-synchronized updatePolicies(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 202
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
