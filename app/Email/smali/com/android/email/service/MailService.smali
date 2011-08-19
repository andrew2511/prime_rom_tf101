.class public Lcom/android/email/service/MailService;
.super Landroid/app/Service;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/MailService$EmailSyncStatusObserver;,
        Lcom/android/email/service/MailService$ControllerResults;,
        Lcom/android/email/service/MailService$AccountSyncReport;
    }
.end annotation


# static fields
.field private static final NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

.field static mSyncReports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/service/MailService$AccountSyncReport;",
            ">;"
        }
    .end annotation
.end field

.field private static sMailService:Lcom/android/email/service/MailService;

.field private static final sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/email/SingleRunningTask",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/email/Controller;

.field private final mControllerCallback:Lcom/android/email/Controller$Result;

.field private mHandler:Landroid/os/Handler;

.field private mStartId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "newMessageCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    .line 835
    new-instance v0, Lcom/android/email/service/MailService$8;

    const-string v1, "ReconcilePopImapAccountsSync"

    invoke-direct {v0, v1}, Lcom/android/email/service/MailService$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    new-instance v0, Lcom/android/email/service/MailService$ControllerResults;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$ControllerResults;-><init>(Lcom/android/email/service/MailService;)V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/MailService;->mHandler:Landroid/os/Handler;

    .line 808
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/service/MailService;JLandroid/app/AlarmManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/service/MailService;->setWatchdog(JLandroid/app/AlarmManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/MailService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/email/service/MailService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/service/MailService;Lcom/android/email/Controller;JI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->syncOneAccount(Lcom/android/email/Controller;JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/service/MailService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/email/service/MailService;->NEW_MESSAGE_COUNT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/service/MailService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/MailService;->notifyNewMessages(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/service/MailService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/email/service/MailService;->mStartId:I

    return v0
.end method

.method public static accountDeleted(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 863
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 864
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 865
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 866
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 867
    return-void
.end method

.method public static actionCancel(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 122
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method public static actionNotifyNewMessages(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 188
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 190
    return-void
.end method

.method public static actionReschedule(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 115
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    return-void
.end method

.method public static actionSendPendingMail(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 140
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 144
    return-void
.end method

.method private cancel()V
    .locals 6

    .prologue
    .line 385
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 386
    .local v0, alarmMgr:Landroid/app/AlarmManager;
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v1

    .line 387
    .local v1, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 388
    return-void
.end method

.method static getMailServiceForTest()Lcom/android/email/service/MailService;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/android/email/service/MailService;->sMailService:Lcom/android/email/service/MailService;

    return-object v0
.end method

.method public static getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 815
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 816
    .local v11, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 819
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 821
    .local v7, accountId:J
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 822
    .local v10, protocol:Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string v0, "pop3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "imap"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 823
    :cond_1
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 824
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    .line 825
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 830
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v7           #accountId:J
    .end local v10           #protocol:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 832
    return-object v11
.end method

.method private isBackgroundDataEnabled()Z
    .locals 2

    .prologue
    .line 803
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 805
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private notifyNewMessages(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 785
    sget-object v3, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v3

    .line 786
    :try_start_0
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 787
    .local v1, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    if-eqz v4, :cond_0

    iget-boolean v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    if-nez v4, :cond_1

    .line 788
    :cond_0
    monitor-exit v3

    .line 797
    :goto_0
    return-void

    .line 790
    :cond_1
    iget v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 791
    .local v2, unseenMessageCount:I
    invoke-virtual {v1}, Lcom/android/email/service/MailService$AccountSyncReport;->getJustFetchedMessageCount()I

    move-result v0

    .line 792
    .local v0, justFetchedCount:I
    iget v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    iput v4, v1, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    .line 793
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v2, v0}, Lcom/android/email/NotificationController;->showNewMessageNotification(JII)V

    goto :goto_0

    .line 793
    .end local v0           #justFetchedCount:I
    .end local v1           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #unseenMessageCount:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;ZLandroid/content/ContentResolver;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "accountManagerAccounts"
    .parameter "blockExternalChanges"
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ">;[",
            "Landroid/accounts/Account;",
            "Z",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, emailProviderAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Account;>;"
    invoke-static {p0, p1, p2, p4}, Lcom/android/emailcommon/utility/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 883
    .local v0, accountsDeleted:Z
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 884
    invoke-static {p0}, Lcom/android/email/service/MailService;->accountDeleted(Landroid/content/Context;)V

    .line 886
    :cond_0
    return-void
.end method

.method public static reconcilePopImapAccountsSync(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 852
    sget-object v0, Lcom/android/email/service/MailService;->sReconcilePopImapAccountsSyncExecutor:Lcom/android/email/SingleRunningTask;

    invoke-virtual {v0, p0}, Lcom/android/email/SingleRunningTask;->run(Ljava/lang/Object;)V

    .line 853
    return-void
.end method

.method public static resetNewMessageCount(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 153
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v2

    .line 154
    :try_start_0
    sget-object v3, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 155
    .local v1, report:Lcom/android/email/service/MailService$AccountSyncReport;
    const-wide/16 v3, -0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_1

    iget-wide v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    .line 156
    :cond_1
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 157
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    goto :goto_0

    .line 160
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 165
    new-instance v2, Lcom/android/email/service/MailService$1;

    invoke-direct {v2, p1, p2, p0}, Lcom/android/email/service/MailService$1;-><init>(JLandroid/content/Context;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 175
    return-void
.end method

.method private setWatchdog(JLandroid/app/AlarmManager;)V
    .locals 7
    .parameter "accountId"
    .parameter "alarmMgr"

    .prologue
    .line 487
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p0, p1, p2, v5, v6}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 488
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 489
    .local v3, timeNow:J
    const-wide/32 v5, 0x927c0

    add-long v0, v3, v5

    .line 490
    .local v0, nextCheckTime:J
    const/4 v5, 0x2

    invoke-virtual {p3, v5, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 491
    return-void
.end method

.method public static setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZLandroid/accounts/AccountManagerCallback;)V
    .locals 9
    .parameter "context"
    .parameter "account"
    .parameter "email"
    .parameter "calendar"
    .parameter "contacts"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "ZZZ",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 891
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 892
    .local v4, options:Landroid/os/Bundle;
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 894
    .local v8, hostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const-string v0, "username"

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v0, "password"

    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v0, "contacts"

    invoke-virtual {v4, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 897
    const-string v0, "calendar"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 898
    const-string v0, "email"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 899
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v3, "eas"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.exchange"

    move-object v1, v0

    .line 902
    .local v1, accountType:Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v3, v2

    move-object v5, v2

    move-object v6, p5

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 904
    return-void

    .line 899
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    const-string v0, "com.android.email"

    move-object v1, v0

    goto :goto_0
.end method

.method private syncOneAccount(Lcom/android/email/Controller;JI)Z
    .locals 7
    .parameter "controller"
    .parameter "checkAccountId"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-static {p0, p2, p3, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 522
    .local v3, inboxId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    move v0, v2

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_0
    int-to-long v5, p4

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->serviceCheckMail(JJJ)V

    .line 526
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method createAlarmIntent(J[JZ)Landroid/app/PendingIntent;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 501
    const-class v1, Lcom/android/email/service/MailService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 502
    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 504
    const-string v1, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 505
    if-eqz p4, :cond_0

    .line 506
    const-string v1, "com.android.email.intent.extra.WATCHDOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 509
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 375
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 381
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 382
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 198
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 201
    sput-object p0, Lcom/android/email/service/MailService;->sMailService:Lcom/android/email/service/MailService;

    .line 204
    invoke-static {p0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    .line 206
    new-instance v0, Lcom/android/email/service/MailService$2;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$2;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 214
    iput p3, p0, Lcom/android/email/service/MailService;->mStartId:I

    .line 215
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 216
    .local v7, action:Ljava/lang/String;
    const-string v0, "com.android.email.intent.extra.ACCOUNT"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 218
    .local v3, accountId:J
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    .line 219
    iget-object v0, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/service/MailService;->mControllerCallback:Lcom/android/email/Controller$Result;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/email/service/MailService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;

    .line 221
    iput-object p0, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    .line 223
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/email/service/MailService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 225
    .local v5, alarmManager:Landroid/app/AlarmManager;
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Lcom/android/email/service/MailService$3;

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/email/service/MailService$3;-><init>(Lcom/android/email/service/MailService;Landroid/content/Intent;JLandroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 370
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 272
    :cond_1
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_CANCEL"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 274
    const-string v0, "Email-MailService"

    const-string v1, "action: cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_2
    invoke-direct {p0}, Lcom/android/email/service/MailService;->cancel()V

    .line 277
    invoke-virtual {p0, p3}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 279
    :cond_3
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_DELETE_EXCHANGE_ACCOUNTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 281
    const-string v0, "Email-MailService"

    const-string v1, "action: delete exchange accounts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_4
    new-instance v0, Lcom/android/email/service/MailService$4;

    invoke-direct {v0, p0}, Lcom/android/email/service/MailService$4;-><init>(Lcom/android/email/service/MailService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 301
    invoke-virtual {p0, p3}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 303
    :cond_5
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_SEND_PENDING"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 304
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 305
    const-string v0, "Email-MailService"

    const-string v1, "action: send pending mail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_6
    new-instance v0, Lcom/android/email/service/MailService$5;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/email/service/MailService$5;-><init>(Lcom/android/email/service/MailService;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 312
    invoke-virtual {p0, p3}, Lcom/android/email/service/MailService;->stopSelf(I)V

    goto :goto_0

    .line 314
    :cond_7
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_RESCHEDULE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_8

    .line 316
    const-string v0, "Email-MailService"

    const-string v1, "action: reschedule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_8
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 320
    .local v8, nc:Lcom/android/email/NotificationController;
    new-instance v0, Lcom/android/email/service/MailService$6;

    invoke-direct {v0, p0, v8, v5, p3}, Lcom/android/email/service/MailService$6;-><init>(Lcom/android/email/service/MailService;Lcom/android/email/NotificationController;Landroid/app/AlarmManager;I)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 338
    .end local v8           #nc:Lcom/android/email/NotificationController;
    :cond_9
    const-string v0, "com.android.email.intent.action.MAIL_SERVICE_NOTIFY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Lcom/android/email/service/MailService$7;

    invoke-direct {v0, p0, v3, v4, p3}, Lcom/android/email/service/MailService$7;-><init>(Lcom/android/email/service/MailService;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method refreshSyncReports()V
    .locals 9

    .prologue
    .line 394
    sget-object v4, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v4

    .line 396
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 400
    .local v3, oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    const-wide/16 v5, -0x2

    invoke-virtual {p0, v5, v6, p0}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 403
    sget-object v5, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 404
    .local v1, newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 405
    .local v2, oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v2, :cond_0

    .line 406
    iget-wide v5, v2, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iput-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 407
    iget v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v5, :cond_0

    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 408
    iget-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v7, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v7, v7, 0x3e8

    mul-int/lit8 v7, v7, 0x3c

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v1, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_0

    .line 413
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #newReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v2           #oldReport:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v3           #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #oldSyncReports:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/email/service/MailService$AccountSyncReport;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    return-void
.end method

.method reschedule(Landroid/app/AlarmManager;)V
    .locals 27
    .parameter "alarmMgr"

    .prologue
    .line 424
    const-wide/16 v23, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 425
    sget-object v23, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v23

    .line 426
    :try_start_0
    sget-object v24, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v16

    .line 427
    .local v16, numAccounts:I
    mul-int/lit8 v24, v16, 0x2

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object v5, v0

    .line 428
    .local v5, accountInfo:[J
    const/4 v6, 0x0

    .line 430
    .local v6, accountInfoIndex:I
    const-wide v12, 0x7fffffffffffffffL

    .line 431
    .local v12, nextCheckTime:J
    const/4 v11, 0x0

    .line 432
    .local v11, nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 434
    .local v21, timeNow:J
    sget-object v24, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    move v7, v6

    .end local v6           #accountInfoIndex:I
    .local v7, accountInfoIndex:I
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 435
    .local v20, report:Lcom/android/email/service/MailService$AccountSyncReport;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    .line 438
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v18, v0

    .line 439
    .local v18, prevSyncTime:J
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    move-wide v14, v0

    .line 442
    .local v14, nextSyncTime:J
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-eqz v24, :cond_1

    cmp-long v24, v14, v21

    if-gez v24, :cond_3

    .line 443
    :cond_1
    const-wide/16 v12, 0x0

    .line 444
    move-object/from16 v11, v20

    .line 451
    :cond_2
    :goto_1
    add-int/lit8 v6, v7, 0x1

    .end local v7           #accountInfoIndex:I
    .restart local v6       #accountInfoIndex:I
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    aput-wide v24, v5, v7

    .line 452
    add-int/lit8 v7, v6, 0x1

    .end local v6           #accountInfoIndex:I
    .restart local v7       #accountInfoIndex:I
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    move-wide/from16 v24, v0

    aput-wide v24, v5, v6

    goto :goto_0

    .line 476
    .end local v5           #accountInfo:[J
    .end local v7           #accountInfoIndex:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v12           #nextCheckTime:J
    .end local v14           #nextSyncTime:J
    .end local v16           #numAccounts:I
    .end local v18           #prevSyncTime:J
    .end local v20           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .end local v21           #timeNow:J
    :catchall_0
    move-exception v24

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 445
    .restart local v5       #accountInfo:[J
    .restart local v7       #accountInfoIndex:I
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #nextAccount:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v12       #nextCheckTime:J
    .restart local v14       #nextSyncTime:J
    .restart local v16       #numAccounts:I
    .restart local v18       #prevSyncTime:J
    .restart local v20       #report:Lcom/android/email/service/MailService$AccountSyncReport;
    .restart local v21       #timeNow:J
    :cond_3
    cmp-long v24, v14, v12

    if-gez v24, :cond_2

    .line 446
    move-wide v12, v14

    .line 447
    move-object/from16 v11, v20

    goto :goto_1

    .line 456
    .end local v14           #nextSyncTime:J
    .end local v18           #prevSyncTime:J
    .end local v20           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :cond_4
    :goto_2
    :try_start_1
    move-object v0, v5

    array-length v0, v0

    move/from16 v24, v0

    move v0, v7

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 457
    add-int/lit8 v6, v7, 0x1

    .end local v7           #accountInfoIndex:I
    .restart local v6       #accountInfoIndex:I
    const-wide/16 v24, -0x1

    aput-wide v24, v5, v7

    move v7, v6

    .end local v6           #accountInfoIndex:I
    .restart local v7       #accountInfoIndex:I
    goto :goto_2

    .line 461
    :cond_5
    if-nez v11, :cond_7

    const-wide/16 v24, -0x1

    move-wide/from16 v9, v24

    .line 462
    .local v9, idToCheck:J
    :goto_3
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-wide v1, v9

    move-object v3, v5

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/service/MailService;->createAlarmIntent(J[JZ)Landroid/app/PendingIntent;

    move-result-object v17

    .line 464
    .local v17, pi:Landroid/app/PendingIntent;
    if-nez v11, :cond_8

    .line 465
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 466
    sget-boolean v24, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 467
    const-string v24, "Email-MailService"

    const-string v25, "reschedule: alarm cancel - no account to check"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_6
    :goto_4
    monitor-exit v23

    .line 477
    return-void

    .line 461
    .end local v9           #idToCheck:J
    .end local v17           #pi:Landroid/app/PendingIntent;
    :cond_7
    move-object v0, v11

    iget-wide v0, v0, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    move-wide/from16 v24, v0

    move-wide/from16 v9, v24

    goto :goto_3

    .line 470
    .restart local v9       #idToCheck:J
    .restart local v17       #pi:Landroid/app/PendingIntent;
    :cond_8
    const/16 v24, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-wide v2, v12

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 471
    sget-boolean v24, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v24, :cond_6

    .line 472
    const-string v24, "Email-MailService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "reschedule: alarm set at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method restoreSyncReports(Landroid/content/Intent;)V
    .locals 14
    .parameter "restoreIntent"

    .prologue
    .line 710
    const-wide/16 v9, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 711
    sget-object v9, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v9

    .line 712
    :try_start_0
    const-string v10, "com.android.email.intent.extra.ACCOUNT_INFO"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 713
    .local v2, accountInfo:[J
    if-nez v2, :cond_0

    .line 714
    const-string v10, "Email-MailService"

    const-string v11, "no data in intent to restore"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    monitor-exit v9

    .line 734
    :goto_0
    return-void

    .line 717
    :cond_0
    const/4 v3, 0x0

    .line 718
    .local v3, accountInfoIndex:I
    array-length v5, v2

    .local v5, accountInfoLimit:I
    move v4, v3

    .line 719
    .end local v3           #accountInfoIndex:I
    .local v4, accountInfoIndex:I
    :cond_1
    :goto_1
    if-ge v4, v5, :cond_2

    .line 720
    add-int/lit8 v3, v4, 0x1

    .end local v4           #accountInfoIndex:I
    .restart local v3       #accountInfoIndex:I
    aget-wide v0, v2, v4

    .line 721
    .local v0, accountId:J
    add-int/lit8 v4, v3, 0x1

    .end local v3           #accountInfoIndex:I
    .restart local v4       #accountInfoIndex:I
    aget-wide v6, v2, v3

    .line 722
    .local v6, prevSync:J
    sget-object v10, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 723
    .local v8, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-eqz v8, :cond_1

    .line 724
    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 725
    iput-wide v6, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 726
    iget v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v10, :cond_1

    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    .line 727
    iget-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v12, v8, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v12, v12, 0x3e8

    mul-int/lit8 v12, v12, 0x3c

    int-to-long v12, v12

    add-long/2addr v10, v12

    iput-wide v10, v8, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    goto :goto_1

    .line 733
    .end local v0           #accountId:J
    .end local v2           #accountInfo:[J
    .end local v4           #accountInfoIndex:I
    .end local v5           #accountInfoLimit:I
    .end local v6           #prevSync:J
    .end local v8           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v2       #accountInfo:[J
    .restart local v4       #accountInfoIndex:I
    .restart local v5       #accountInfoLimit:I
    :cond_2
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method setupSyncReports(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 579
    sget-object v0, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/email/service/MailService;->setupSyncReportsLocked(JLandroid/content/Context;)V

    .line 581
    monitor-exit v0

    .line 582
    return-void

    .line 581
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setupSyncReportsLocked(JLandroid/content/Context;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 588
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 589
    const-wide/16 v1, -0x2

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 591
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 592
    const-wide/16 v1, -0x1

    .line 607
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_7

    .line 608
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    .line 613
    :goto_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getForceOneMinuteRefresh()Z

    move-result v6

    .line 615
    if-eqz v6, :cond_0

    .line 616
    const-string v2, "Email-MailService"

    const-string v3, "One-minute refresh enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 622
    :cond_1
    :goto_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 623
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object p1

    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 627
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 634
    new-instance v1, Lcom/android/email/service/MailService$AccountSyncReport;

    invoke-direct {v1}, Lcom/android/email/service/MailService$AccountSyncReport;-><init>()V

    .line 635
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    .line 638
    iget-object v3, p0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v3

    if-nez v3, :cond_8

    .line 639
    const/4 v2, -0x1

    .line 644
    :cond_2
    :goto_3
    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    .line 645
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 646
    if-lez v2, :cond_9

    const-wide/16 v3, 0x0

    :goto_4
    iput-wide v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 647
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 648
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->lastUnseenMessageCount:I

    .line 650
    iput v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    .line 651
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_5
    iput-boolean v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->notify:Z

    .line 654
    new-instance v2, Landroid/accounts/Account;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v4, "com.android.email"

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v3, "com.android.email.provider"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/email/service/MailService$AccountSyncReport;->syncEnabled:Z

    .line 661
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/android/email/service/MailService$AccountSyncReport;->accountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 664
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 593
    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_5

    .line 595
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 666
    :cond_4
    :goto_6
    return-void

    .line 600
    :cond_5
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_6
    move-wide v1, p1

    goto/16 :goto_0

    .line 610
    :cond_7
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_1

    .line 640
    :cond_8
    if-eqz v6, :cond_2

    if-ltz v2, :cond_2

    .line 641
    const/4 v2, 0x1

    goto :goto_3

    .line 646
    :cond_9
    const-wide/16 v3, -0x1

    goto :goto_4

    .line 651
    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 664
    :cond_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method updateAccountReport(JI)Lcom/android/email/service/MailService$AccountSyncReport;
    .locals 6
    .parameter "accountId"
    .parameter "newCount"

    .prologue
    .line 677
    invoke-virtual {p0, p1, p2}, Lcom/android/email/service/MailService;->setupSyncReports(J)V

    .line 678
    sget-object v1, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    monitor-enter v1

    .line 679
    :try_start_0
    sget-object v2, Lcom/android/email/service/MailService;->mSyncReports:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/service/MailService$AccountSyncReport;

    .line 680
    .local v0, report:Lcom/android/email/service/MailService$AccountSyncReport;
    if-nez v0, :cond_0

    .line 682
    const-string v2, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No account to update for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 697
    :goto_0
    return-object v1

    .line 687
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    .line 688
    iget v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    if-lez v2, :cond_1

    .line 689
    iget-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->prevSyncTime:J

    iget v4, v0, Lcom/android/email/service/MailService$AccountSyncReport;->syncInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    mul-int/lit8 v4, v4, 0x3c

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/email/service/MailService$AccountSyncReport;->nextSyncTime:J

    .line 691
    :cond_1
    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 692
    iput p3, v0, Lcom/android/email/service/MailService$AccountSyncReport;->unseenMessageCount:I

    .line 694
    :cond_2
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 695
    const-string v2, "Email-MailService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/email/service/MailService$AccountSyncReport;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 698
    .end local v0           #report:Lcom/android/email/service/MailService$AccountSyncReport;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
