.class public Lcom/google/android/backup/BackupTransportService;
.super Landroid/app/Service;
.source "BackupTransportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/backup/BackupTransportService$MissingAccountsException;
    }
.end annotation


# instance fields
.field private mAbortScheduler:Lcom/android/common/OperationScheduler;

.field private mBackupAccountPreferences:Landroid/content/SharedPreferences;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBackupScheduler:Lcom/android/common/OperationScheduler;

.field private final mBinderInterface:Lcom/android/internal/backup/IBackupTransport$Stub;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mObserverHandle:Ljava/lang/Object;

.field private mRestoreScheduler:Lcom/android/common/OperationScheduler;

.field private mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 138
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 139
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;

    .line 140
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;

    .line 141
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;

    .line 142
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;

    .line 143
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mObserverHandle:Ljava/lang/Object;

    .line 144
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 145
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 146
    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    .line 242
    new-instance v0, Lcom/google/android/backup/BackupTransportService$1;

    invoke-direct {v0, p0}, Lcom/google/android/backup/BackupTransportService$1;-><init>(Lcom/google/android/backup/BackupTransportService;)V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBinderInterface:Lcom/android/internal/backup/IBackupTransport$Stub;

    .line 619
    new-instance v0, Lcom/google/android/backup/BackupTransportService$2;

    invoke-direct {v0, p0}, Lcom/google/android/backup/BackupTransportService$2;-><init>(Lcom/google/android/backup/BackupTransportService;)V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/backup/BackupTransportService;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler$Options;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->getBackupManager()Landroid/app/backup/IBackupManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/backup/BackupTransportService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->cancelSetBackupAccountNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/backup/BackupTransportService;Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/google/android/backup/BackupTransportService;->sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/backup/BackupTransportService;)Lcom/android/common/OperationScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/backup/BackupTransportService;)Landroid/app/backup/IBackupManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/backup/BackupTransportService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private cancelSetBackupAccountNotification()V
    .locals 3

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "com.google.android.backup.notification.tag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 617
    return-void
.end method

.method private getAccounts()[Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 186
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 187
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 189
    .local v0, accounts:[Landroid/accounts/Account;
    return-object v0
.end method

.method private declared-synchronized getBackupManager()Landroid/app/backup/IBackupManager;
    .locals 2

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v1, :cond_0

    .line 236
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 237
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 239
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService;->mBackupManager:Landroid/app/backup/IBackupManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isBackupAccountMissingNotified()Z
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    const-string v1, "backupAccountMissingNotified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private newBackupAccountNotification()Landroid/app/Notification;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 568
    iget-object v3, p0, Lcom/google/android/backup/BackupTransportService;->mBinderInterface:Lcom/android/internal/backup/IBackupTransport$Stub;

    invoke-virtual {v3}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 569
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 573
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 574
    .local v1, notification:Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 575
    const v3, 0x108008a

    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Landroid/app/Notification;->when:J

    .line 577
    invoke-virtual {p0}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 579
    invoke-virtual {p0}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/backup/BackupTransportService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 583
    return-object v1
.end method

.method private declared-synchronized saveBackupAccount(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 218
    monitor-enter p0

    if-nez p1, :cond_0

    .line 219
    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Backup account should be not null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 222
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "accountName"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 224
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    const-string v1, "accountExpected"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    const-string v1, "backupAccountMissingNotified"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->cancelSetBackupAccountNotification()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    monitor-exit p0

    return-void
.end method

.method private sendRequestLocked(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/common/OperationScheduler;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 29
    .parameter "request"
    .parameter "scheduler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/BackupTransportService;->mBinderInterface:Lcom/android/internal/backup/IBackupTransport$Stub;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "lock not held"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 733
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    .line 734
    .local v6, am:Landroid/accounts/AccountManager;
    const/4 v15, 0x0

    .line 737
    .local v15, hadOneAuthError:Z
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/backup/BackupTransportService;->validateAndGetBackupAccount()Landroid/accounts/Account;

    move-result-object v8

    .line 740
    .local v8, backupAccount:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    cmp-long v25, v25, v27

    if-lez v25, :cond_2

    .line 741
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Not ready to send network request: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 745
    :cond_2
    if-nez v8, :cond_3

    .line 746
    :try_start_0
    new-instance v25, Lcom/google/android/backup/BackupTransportService$MissingAccountsException;

    const-string v26, "Backup account is not defined"

    invoke-direct/range {v25 .. v26}, Lcom/google/android/backup/BackupTransportService$MissingAccountsException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_0
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 788
    :catch_0
    move-exception v25

    move-object/from16 v12, v25

    .line 789
    .local v12, e:Lcom/google/android/backup/BackupTransportService$MissingAccountsException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-wide/32 v27, 0x240c8400

    add-long v18, v25, v27

    .line 790
    .local v18, moratorium:J
    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V

    .line 791
    const-string v25, "BackupTransportService"

    const-string v26, "Backup account missing, trying again later"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v14, Ljava/io/IOException;

    const-string v25, "Can\'t get Backup account"

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 793
    .local v14, err:Ljava/io/IOException;
    invoke-virtual {v14, v12}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 794
    throw v14

    .line 748
    .end local v12           #e:Lcom/google/android/backup/BackupTransportService$MissingAccountsException;
    .end local v14           #err:Ljava/io/IOException;
    .end local v18           #moratorium:J
    :cond_3
    const/16 v25, 0xe

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-nez v25, :cond_5

    .line 750
    const-string v25, "android"

    const/16 v26, 0x1

    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, authToken:Ljava/lang/String;
    if-nez v7, :cond_4

    new-instance v25, Landroid/accounts/AccountsException;

    const-string v26, "No auth token available"

    invoke-direct/range {v25 .. v26}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_1
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 795
    .end local v7           #authToken:Ljava/lang/String;
    :catch_1
    move-exception v25

    move-object/from16 v12, v25

    .line 796
    .local v12, e:Landroid/accounts/AccountsException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-wide/32 v27, 0x2932e00

    add-long v18, v25, v27

    .line 797
    .restart local v18       #moratorium:J
    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V

    .line 798
    new-instance v14, Ljava/io/IOException;

    const-string v25, "Can\'t get credentials"

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 799
    .restart local v14       #err:Ljava/io/IOException;
    invoke-virtual {v14, v12}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 800
    throw v14

    .line 753
    .end local v12           #e:Landroid/accounts/AccountsException;
    .end local v14           #err:Ljava/io/IOException;
    .end local v18           #moratorium:J
    .restart local v7       #authToken:Ljava/lang/String;
    :cond_4
    const/16 v25, 0xe

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 756
    .end local v7           #authToken:Ljava/lang/String;
    :cond_5
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-nez v25, :cond_8

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/backup/BackupTransportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "android_id"

    const-wide/16 v27, 0x0

    invoke-static/range {v25 .. v28}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 758
    .local v4, aid:J
    const-wide/16 v25, 0x0

    cmp-long v25, v4, v25

    if-nez v25, :cond_7

    new-instance v25, Landroid/accounts/AccountsException;

    const-string v26, "No Android ID available"

    invoke-direct/range {v25 .. v26}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_2
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 801
    .end local v4           #aid:J
    :catch_2
    move-exception v25

    move-object/from16 v12, v25

    .line 802
    .local v12, e:Lcom/google/android/backup/BackupRequestGenerator$AuthException;
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 803
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 804
    .restart local v7       #authToken:Ljava/lang/String;
    const-string v25, "com.google"

    move-object v0, v6

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/16 v25, 0xe

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->remove(II)V

    .line 808
    .end local v7           #authToken:Ljava/lang/String;
    :cond_6
    if-eqz v15, :cond_e

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-wide/32 v27, 0x2932e00

    add-long v18, v25, v27

    .line 810
    .restart local v18       #moratorium:J
    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V

    .line 811
    new-instance v14, Ljava/io/IOException;

    const-string v25, "Repeated authentication failure"

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 812
    .restart local v14       #err:Ljava/io/IOException;
    invoke-virtual {v14, v12}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 813
    throw v14

    .line 759
    .end local v12           #e:Lcom/google/android/backup/BackupRequestGenerator$AuthException;
    .end local v14           #err:Ljava/io/IOException;
    .end local v18           #moratorium:J
    .restart local v4       #aid:J
    :cond_7
    const/16 v25, 0x1

    :try_start_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 762
    .end local v4           #aid:J
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v9

    .line 765
    .local v9, data:[B
    new-instance v22, Lorg/apache/http/client/methods/HttpPost;

    const-string v25, "https://android.clients.google.com/backup"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 766
    .local v22, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v25, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/BackupTransportService;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 768
    .local v23, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 769
    .local v13, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0x1f7

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 770
    const-string v25, "Retry-After"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 771
    .local v16, header:Lorg/apache/http/Header;
    if-eqz v16, :cond_9

    .line 772
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 779
    .end local v16           #header:Lorg/apache/http/Header;
    :cond_9
    :goto_1
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    .line 780
    if-eqz v13, :cond_a

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 781
    :cond_a
    new-instance v25, Ljava/io/IOException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Server rejected backup: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_3
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 818
    .end local v9           #data:[B
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v23           #response:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v25

    move-object/from16 v12, v25

    .line 819
    .local v12, e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    throw v12

    .line 775
    .end local v12           #e:Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException;
    .restart local v9       #data:[B
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v16       #header:Lorg/apache/http/Header;
    .restart local v22       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v23       #response:Lorg/apache/http/HttpResponse;
    :cond_b
    :try_start_4
    const-string v25, "BackupTransportService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Invalid Retry-After date: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 820
    .end local v9           #data:[B
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v16           #header:Lorg/apache/http/Header;
    .end local v22           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v23           #response:Lorg/apache/http/HttpResponse;
    :catch_4
    move-exception v25

    move-object/from16 v12, v25

    .line 821
    .local v12, e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    throw v12

    .line 784
    .end local v12           #e:Lcom/google/android/backup/BackupRequestGenerator$PolicyException;
    .restart local v9       #data:[B
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v22       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v23       #response:Lorg/apache/http/HttpResponse;
    :cond_c
    if-nez v13, :cond_d

    :try_start_5
    new-instance v25, Ljava/io/IOException;

    const-string v26, "Missing response body"

    invoke-direct/range {v25 .. v26}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_5
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 822
    .end local v9           #data:[B
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v23           #response:Lorg/apache/http/HttpResponse;
    :catch_5
    move-exception v25

    move-object/from16 v12, v25

    .line 823
    .local v12, e:Ljava/io/IOException;
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v20

    .line 825
    .local v20, next:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v10, v20, v25

    .line 826
    .local v10, delay:J
    const-wide/16 v25, 0x7530

    cmp-long v25, v10, v25

    if-lez v25, :cond_f

    throw v12

    .line 785
    .end local v10           #delay:J
    .end local v12           #e:Ljava/io/IOException;
    .end local v20           #next:J
    .restart local v9       #data:[B
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v22       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v23       #response:Lorg/apache/http/HttpResponse;
    :cond_d
    :try_start_6
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/google/android/backup/BackupRequestGenerator;->parseResponse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v24

    .line 786
    .local v24, result:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual/range {p2 .. p2}, Lcom/android/common/OperationScheduler;->onSuccess()V
    :try_end_6
    .catch Lcom/google/android/backup/BackupTransportService$MissingAccountsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/accounts/AccountsException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/backup/BackupRequestGenerator$AuthException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/android/backup/BackupRequestGenerator$UninitializedDeviceException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/google/android/backup/BackupRequestGenerator$PolicyException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 787
    return-object v24

    .line 816
    .end local v9           #data:[B
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v22           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v23           #response:Lorg/apache/http/HttpResponse;
    .end local v24           #result:Lcom/google/common/io/protocol/ProtoBuf;
    .local v12, e:Lcom/google/android/backup/BackupRequestGenerator$AuthException;
    :cond_e
    const/4 v15, 0x1

    .line 817
    const-string v25, "BackupTransportService"

    const-string v26, "Authentication error, trying again after invalidating auth token"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 827
    .restart local v10       #delay:J
    .local v12, e:Ljava/io/IOException;
    .restart local v20       #next:J
    :cond_f
    const-string v25, "BackupTransportService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Network error - waiting "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "ms to retry: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-wide/16 v25, 0x0

    cmp-long v25, v10, v25

    if-lez v25, :cond_1

    :try_start_7
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 831
    :catch_6
    move-exception v17

    .line 832
    .local v17, ie:Ljava/lang/InterruptedException;
    new-instance v25, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v25
.end method

.method private sendSetBackupAccountNotificationIfNeeded()V
    .locals 7

    .prologue
    .line 587
    const/4 v2, 0x0

    .line 589
    .local v2, isBackupEnabled:Z
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->getBackupManager()Landroid/app/backup/IBackupManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 593
    :goto_0
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    const-string v5, "accountExpected"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 594
    .local v0, accountExpected:Z
    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 595
    :cond_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->cancelSetBackupAccountNotification()V

    .line 612
    :cond_1
    :goto_1
    return-void

    .line 590
    .end local v0           #accountExpected:Z
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 591
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "BackupTransportService"

    const-string v5, "Cannot get BackupManager isBackupEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #accountExpected:Z
    :cond_2
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->isBackupAccountMissingNotified()Z

    move-result v4

    if-nez v4, :cond_1

    .line 603
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->newBackupAccountNotification()Landroid/app/Notification;

    move-result-object v3

    .line 604
    .local v3, notification:Landroid/app/Notification;
    iget-object v4, p0, Lcom/google/android/backup/BackupTransportService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v5, "com.google.android.backup.notification.tag"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 607
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/backup/BackupTransportService;->setBackupAccountMissingNotified(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 608
    .end local v3           #notification:Landroid/app/Notification;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 609
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v4, "BackupTransportService"

    const-string v5, "Cannot send notification for setting Backup Account due to RemoteException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private setBackupAccountMissingNotified(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "backupAccountMissingNotified"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 179
    return-void
.end method

.method private declared-synchronized validateAndGetBackupAccount()Landroid/accounts/Account;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    const-string v8, "accountType"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, accountType:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    const-string v8, "accountName"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, accountName:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 196
    :cond_0
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->sendSetBackupAccountNotificationIfNeeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v10

    .line 214
    :goto_0
    monitor-exit p0

    return-object v7

    .line 203
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v6, v3

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v0, v3, v5

    .line 204
    .local v0, account:Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->cancelSetBackupAccountNotification()V

    move-object v7, v0

    .line 206
    goto :goto_0

    .line 203
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 209
    .end local v0           #account:Landroid/accounts/Account;
    :cond_3
    iget-object v7, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 210
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "accountName"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    const-string v7, "accountType"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 212
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    invoke-direct {p0}, Lcom/google/android/backup/BackupTransportService;->sendSetBackupAccountNotificationIfNeeded()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v10

    .line 214
    goto :goto_0

    .line 193
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBinderInterface:Lcom/android/internal/backup/IBackupTransport$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "Android-Backup/1.0"

    invoke-direct {v0, p0, v1, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 681
    new-instance v0, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v0}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mSchedulerOptions:Lcom/android/common/OperationScheduler$Options;

    .line 682
    new-instance v0, Lcom/android/common/OperationScheduler;

    const-string v1, "BackupTransport.backupScheduler"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/backup/BackupTransportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupScheduler:Lcom/android/common/OperationScheduler;

    .line 684
    new-instance v0, Lcom/android/common/OperationScheduler;

    const-string v1, "BackupTransport.restoreScheduler"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/backup/BackupTransportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mRestoreScheduler:Lcom/android/common/OperationScheduler;

    .line 686
    new-instance v0, Lcom/android/common/OperationScheduler;

    const-string v1, "BackupTransport.abortScheduler"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/backup/BackupTransportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mAbortScheduler:Lcom/android/common/OperationScheduler;

    .line 689
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/backup/BackupTransportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 691
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/backup/BackupTransportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 693
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/backup/BackupTransportService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 695
    const/4 v0, 0x1

    new-instance v1, Lcom/google/android/backup/BackupTransportService$3;

    invoke-direct {v1, p0}, Lcom/google/android/backup/BackupTransportService$3;-><init>(Lcom/google/android/backup/BackupTransportService;)V

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mObserverHandle:Ljava/lang/Object;

    .line 704
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/backup/BackupTransportService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/backup/BackupTransportService$4;

    invoke-direct {v1, p0}, Lcom/google/android/backup/BackupTransportService$4;-><init>(Lcom/google/android/backup/BackupTransportService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 712
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/backup/BackupTransportService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 714
    const-string v0, "BackupTransport.backupAccount"

    invoke-virtual {p0, v0, v3}, Lcom/google/android/backup/BackupTransportService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mBackupAccountPreferences:Landroid/content/SharedPreferences;

    .line 715
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mObserverHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/backup/BackupTransportService;->mObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 720
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 165
    const-string v1, "com.google.android.backup.SetBackupAccount"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "backupAccount"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 167
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0, v0}, Lcom/google/android/backup/BackupTransportService;->saveBackupAccount(Landroid/accounts/Account;)V

    .line 171
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/android/backup/BackupTransportService;->stopSelf(I)V

    .line 172
    const/4 v1, 0x2

    return v1
.end method
