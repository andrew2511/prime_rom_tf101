.class Lcom/android/server/BackupManagerService;
.super Landroid/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$ActiveRestoreSession;,
        Lcom/android/server/BackupManagerService$PerformInitializeTask;,
        Lcom/android/server/BackupManagerService$PerformClearTask;,
        Lcom/android/server/BackupManagerService$PerformRestoreTask;,
        Lcom/android/server/BackupManagerService$PerformBackupTask;,
        Lcom/android/server/BackupManagerService$ClearDataObserver;,
        Lcom/android/server/BackupManagerService$RunInitializeReceiver;,
        Lcom/android/server/BackupManagerService$RunBackupReceiver;,
        Lcom/android/server/BackupManagerService$BackupHandler;,
        Lcom/android/server/BackupManagerService$ClearParams;,
        Lcom/android/server/BackupManagerService$RestoreParams;,
        Lcom/android/server/BackupManagerService$RestoreGetSetsParams;,
        Lcom/android/server/BackupManagerService$BackupRequest;
    }
.end annotation


# static fields
.field private static final BACKUP_INTERVAL:J = 0x36ee80L

.field static final CURRENT_ANCESTRAL_RECORD_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final FIRST_BACKUP_INTERVAL:J = 0x2932e00L

.field private static final FUZZ_MILLIS:I = 0x493e0

.field static final INIT_SENTINEL_FILE_NAME:Ljava/lang/String; = "_need_init_"

.field private static final MSG_RESTORE_TIMEOUT:I = 0x8

.field private static final MSG_RUN_BACKUP:I = 0x1

.field private static final MSG_RUN_CLEAR:I = 0x4

.field private static final MSG_RUN_FULL_BACKUP:I = 0x2

.field private static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field private static final MSG_RUN_INITIALIZE:I = 0x5

.field private static final MSG_RUN_RESTORE:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x7

.field static final OP_ACKNOWLEDGED:I = 0x1

.field static final OP_PENDING:I = 0x0

.field static final OP_TIMEOUT:I = -0x1

.field static final PACKAGE_MANAGER_SENTINEL:Ljava/lang/String; = "@pm@"

.field private static final RUN_BACKUP_ACTION:Ljava/lang/String; = "android.app.backup.intent.RUN"

.field private static final RUN_CLEAR_ACTION:Ljava/lang/String; = "android.app.backup.intent.CLEAR"

.field private static final RUN_INITIALIZE_ACTION:Ljava/lang/String; = "android.app.backup.intent.INIT"

.field private static final TAG:Ljava/lang/String; = "BackupManagerService"

.field static final TIMEOUT_BACKUP_INTERVAL:J = 0x7530L

.field static final TIMEOUT_INTERVAL:J = 0x2710L

.field static final TIMEOUT_RESTORE_INTERVAL:J = 0xea60L


# instance fields
.field mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

.field private mActivityManager:Landroid/app/IActivityManager;

.field final mAgentConnectLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mAncestralPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAncestralToken:J

.field mAutoRestore:Z

.field mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

.field mBackupManagerBinder:Landroid/app/backup/IBackupManager;

.field final mBackupParticipants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mBaseStateDir:Ljava/io/File;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mClearDataLock:Ljava/lang/Object;

.field volatile mClearingData:Z

.field mConnectedAgent:Landroid/app/IBackupAgent;

.field volatile mConnecting:Z

.field private mContext:Landroid/content/Context;

.field final mCurrentOpLock:Ljava/lang/Object;

.field final mCurrentOperations:Landroid/util/SparseIntArray;

.field mCurrentToken:J

.field mCurrentTransport:Ljava/lang/String;

.field mDataDir:Ljava/io/File;

.field mEnabled:Z

.field private mEverStored:Ljava/io/File;

.field mEverStoredApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGoogleConnection:Landroid/content/ServiceConnection;

.field mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

.field mHandlerThread:Landroid/os/HandlerThread;

.field mJournal:Ljava/io/File;

.field mJournalDir:Ljava/io/File;

.field volatile mLastBackupPass:J

.field mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

.field volatile mNextBackupPass:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerBinder:Landroid/content/pm/IPackageManager;

.field mPendingBackups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInits:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field mProvisioned:Z

.field final mQueueLock:Ljava/lang/Object;

.field mRunBackupIntent:Landroid/app/PendingIntent;

.field mRunBackupReceiver:Landroid/content/BroadcastReceiver;

.field mRunInitIntent:Landroid/app/PendingIntent;

.field mRunInitReceiver:Landroid/content/BroadcastReceiver;

.field mTokenFile:Ljava/io/File;

.field final mTokenGenerator:Ljava/util/Random;

.field final mTransports:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/backup/IBackupTransport;",
            ">;"
        }
    .end annotation
.end field

.field mWakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    .line 425
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 131
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "backup"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 136
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    .line 153
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    .line 160
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 166
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    .line 173
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    .line 177
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    .line 241
    new-instance v8, Landroid/util/SparseIntArray;

    invoke-direct {v8}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    .line 242
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    .line 243
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 255
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    .line 259
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 260
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 261
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 265
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    .line 818
    new-instance v8, Lcom/android/server/BackupManagerService$1;

    invoke-direct {v8, p0}, Lcom/android/server/BackupManagerService$1;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 876
    new-instance v8, Lcom/android/server/BackupManagerService$2;

    invoke-direct {v8, p0}, Lcom/android/server/BackupManagerService$2;-><init>(Lcom/android/server/BackupManagerService;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    .line 426
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 428
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    .line 429
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 431
    const-string v8, "alarm"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 432
    const-string v8, "power"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 434
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/BackupManagerService;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    .line 437
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "backup"

    const/16 v10, 0xa

    invoke-direct {v8, v9, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 438
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 439
    new-instance v8, Lcom/android/server/BackupManagerService$BackupHandler;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/BackupManagerService$BackupHandler;-><init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "backup_enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1f2

    const/4 v8, 0x1

    move v0, v8

    .line 444
    .local v0, areEnabled:Z
    :goto_d2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "backup_provisioned"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1f6

    const/4 v8, 0x1

    :goto_e0
    iput-boolean v8, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 446
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "backup_auto_restore"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1f9

    const/4 v8, 0x1

    :goto_f0
    iput-boolean v8, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 450
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSecureDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "backup"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    .line 451
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 452
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    .line 455
    new-instance v8, Lcom/android/server/BackupManagerService$RunBackupReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/BackupManagerService$RunBackupReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    .line 456
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 457
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v8, "android.app.backup.intent.RUN"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mRunBackupReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.BACKUP"

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v2, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 461
    new-instance v8, Lcom/android/server/BackupManagerService$RunInitializeReceiver;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/server/BackupManagerService$RunInitializeReceiver;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    .line 462
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v8, "android.app.backup.intent.INIT"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mRunInitReceiver:Landroid/content/BroadcastReceiver;

    const-string v9, "android.permission.BACKUP"

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v2, v9, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 467
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.app.backup.intent.RUN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    .local v1, backupIntent:Landroid/content/Intent;
    const/high16 v8, 0x4000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 469
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    .line 471
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.app.backup.intent.INIT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v4, initIntent:Landroid/content/Intent;
    const/high16 v8, 0x4000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    .line 476
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v10, "pending"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    .line 477
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 478
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 481
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->initPackageTracking()V

    .line 486
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 487
    const/4 v9, 0x0

    :try_start_180
    invoke-virtual {p0, v9}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V

    .line 488
    monitor-exit v8
    :try_end_184
    .catchall {:try_start_180 .. :try_end_184} :catchall_1fc

    .line 493
    new-instance v8, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v8, p1}, Lcom/android/internal/backup/LocalTransport;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 494
    new-instance v6, Landroid/content/ComponentName;

    const-class v8, Lcom/android/internal/backup/LocalTransport;

    invoke-direct {v6, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v6, localName:Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mLocalTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v8, v9}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    .line 497
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mGoogleTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 498
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "backup_transport"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 500
    const-string v8, ""

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b7

    .line 501
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 508
    :cond_1b7
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.google.android.backup"

    const-string v9, "com.google.android.backup.BackupTransportService"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v7, transportComponent:Landroid/content/ComponentName;
    :try_start_1c0
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 516
    .local v3, info:Landroid/content/pm/ApplicationInfo;
    iget v8, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1ff

    .line 518
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 519
    .local v5, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mGoogleConnection:Landroid/content/ServiceConnection;

    const/4 v9, 0x1

    invoke-virtual {p1, v5, v8, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1e0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c0 .. :try_end_1e0} :catch_218

    .line 530
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #intent:Landroid/content/Intent;
    :goto_1e0
    invoke-direct {p0}, Lcom/android/server/BackupManagerService;->parseLeftoverJournals()V

    .line 533
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v9, 0x1

    const-string v10, "*backup*"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 536
    invoke-virtual {p0, v0}, Lcom/android/server/BackupManagerService;->setBackupEnabled(Z)V

    .line 537
    return-void

    .line 442
    .end local v0           #areEnabled:Z
    .end local v1           #backupIntent:Landroid/content/Intent;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v4           #initIntent:Landroid/content/Intent;
    .end local v6           #localName:Landroid/content/ComponentName;
    .end local v7           #transportComponent:Landroid/content/ComponentName;
    :cond_1f2
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_d2

    .line 444
    .restart local v0       #areEnabled:Z
    :cond_1f6
    const/4 v8, 0x0

    goto/16 :goto_e0

    .line 446
    :cond_1f9
    const/4 v8, 0x0

    goto/16 :goto_f0

    .line 488
    .restart local v1       #backupIntent:Landroid/content/Intent;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v4       #initIntent:Landroid/content/Intent;
    :catchall_1fc
    move-exception v9

    :try_start_1fd
    monitor-exit v8
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fc

    throw v9

    .line 521
    .restart local v3       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v6       #localName:Landroid/content/ComponentName;
    .restart local v7       #transportComponent:Landroid/content/ComponentName;
    :cond_1ff
    :try_start_1ff
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Possible Google transport spoof: ignoring "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_217
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ff .. :try_end_217} :catch_218

    goto :goto_1e0

    .line 523
    .end local v3           #info:Landroid/content/pm/ApplicationInfo;
    :catch_218
    move-exception v8

    goto :goto_1e0
.end method

.method static synthetic access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/BackupManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/BackupManagerService;Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/BackupManagerService;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method private addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 912
    .local p2, targetPkgs:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 913
    .local v1, pkg:Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_1a

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 914
    :cond_1a
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 915
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 916
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v2, :cond_32

    .line 917
    new-instance v2, Ljava/util/HashSet;

    .end local v2           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 918
    .restart local v2       #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    :cond_32
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 923
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 926
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4

    .line 930
    .end local v1           #pkg:Landroid/content/pm/PackageInfo;
    .end local v2           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3           #uid:I
    :cond_47
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 2071
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2072
    .local v0, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 2073
    return-void
.end method

.method private dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 9
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2079
    .local p2, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v3, 0xb04

    invoke-static {v3, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2081
    if-nez p2, :cond_34

    .line 2082
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataChanged but no participant pkg=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :goto_33
    return-void

    .line 2087
    :cond_34
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2089
    :try_start_37
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2092
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 2095
    new-instance v2, Lcom/android/server/BackupManagerService$BackupRequest;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2096
    .local v2, req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 2100
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->writeToJournalLocked(Ljava/lang/String;)V

    goto :goto_3b

    .line 2112
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :catchall_63
    move-exception v4

    monitor-exit v3
    :try_end_65
    .catchall {:try_start_37 .. :try_end_65} :catchall_63

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_66
    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_63

    goto :goto_33
.end method

.method private dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;
    .registers 10
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2119
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_28

    .line 2121
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2122
    :try_start_16
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/HashSet;

    monitor-exit v4

    move-object v4, p0

    .line 2138
    :goto_24
    return-object v4

    .line 2123
    :catchall_25
    move-exception v5

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw v5

    .line 2128
    .restart local p0
    :cond_28
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2129
    .local v3, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v4

    .line 2130
    :try_start_30
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2131
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_37
    if-ge v1, v0, :cond_49

    .line 2132
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 2133
    .local v2, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v2, :cond_46

    .line 2134
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2131
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 2137
    .end local v2           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_49
    monitor-exit v4

    move-object v4, v3

    .line 2138
    goto :goto_24

    .line 2137
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_4c
    move-exception v5

    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_30 .. :try_end_4e} :catchall_4c

    throw v5
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 28
    .parameter "pw"

    .prologue
    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 2785
    :try_start_7
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Backup Manager is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1ae

    const-string v24, "enabled"

    :goto_1c
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    move/from16 v24, v0

    if-nez v24, :cond_1b2

    const-string v24, "not "

    :goto_30
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "provisioned / "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    if-nez v24, :cond_1b6

    const-string v24, "not "

    :goto_48
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "pending init"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Auto-restore is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1ba

    const-string v24, "enabled"

    :goto_72
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2789
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Last backup pass: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " (now = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x29

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "  next scheduled: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    const-string v23, "Available transports:"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BackupManagerService;->listAllTransports()[Ljava/lang/String;

    move-result-object v5

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v5           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .local v12, i$:I
    :goto_e5
    if-ge v12, v13, :cond_1f3

    aget-object v19, v5, v12

    .line 2795
    .local v19, t:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1be

    const-string v24, "  * "

    :goto_100
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_7 .. :try_end_117} :catchall_24c

    .line 2797
    :try_start_117
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v20

    .line 2798
    .local v20, transport:Lcom/android/internal/backup/IBackupTransport;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v23, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v24

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2799
    .local v7, dir:Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       destination: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       intent: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .local v6, arr$:[Ljava/io/File;
    array-length v14, v6

    .local v14, len$:I
    const/4 v11, 0x0

    .end local v12           #i$:I
    .restart local v11       #i$:I
    :goto_175
    if-ge v11, v14, :cond_1ee

    aget-object v9, v6, v11

    .line 2802
    .local v9, f:Ljava/io/File;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "       "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " - "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " state bytes"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1ab
    .catchall {:try_start_117 .. :try_end_1ab} :catchall_24c
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_1ab} :catch_1c2

    .line 2801
    add-int/lit8 v11, v11, 0x1

    goto :goto_175

    .line 2785
    .end local v6           #arr$:[Ljava/io/File;
    .end local v7           #dir:Ljava/io/File;
    .end local v9           #f:Ljava/io/File;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v19           #t:Ljava/lang/String;
    .end local v20           #transport:Lcom/android/internal/backup/IBackupTransport;
    :cond_1ae
    :try_start_1ae
    const-string v24, "disabled"

    goto/16 :goto_1c

    :cond_1b2
    const-string v24, ""

    goto/16 :goto_30

    :cond_1b6
    const-string v24, ""

    goto/16 :goto_48

    .line 2788
    :cond_1ba
    const-string v24, "disabled"

    goto/16 :goto_72

    .line 2795
    .restart local v12       #i$:I
    .restart local v19       #t:Ljava/lang/String;
    :cond_1be
    const-string v24, "    "

    goto/16 :goto_100

    .line 2804
    .end local v12           #i$:I
    :catch_1c2
    move-exception v23

    move-object/from16 v8, v23

    .line 2805
    .local v8, e:Ljava/lang/Exception;
    const-string v23, "BackupManagerService"

    const-string v24, "Error in transport"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2806
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "        Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1ee
    add-int/lit8 v11, v12, 0x1

    .restart local v11       #i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto/16 :goto_e5

    .line 2810
    .end local v19           #t:Ljava/lang/String;
    :cond_1f3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending init: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :goto_221
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_24f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2812
    .local v18, s:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_221

    .line 2844
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v18           #s:Ljava/lang/String;
    :catchall_24c
    move-exception v23

    monitor-exit v22
    :try_end_24e
    .catchall {:try_start_1ae .. :try_end_24e} :catchall_24c

    throw v23

    .line 2815
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_24f
    :try_start_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 2816
    .local v3, N:I
    const-string v23, "Participants:"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    const/4 v10, 0x0

    .local v10, i:I
    :goto_263
    if-ge v10, v3, :cond_2c4

    .line 2818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v21

    .line 2819
    .local v21, uid:I
    const-string v23, "  uid: "

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2820
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 2822
    .local v15, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_295
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2c1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 2823
    .local v4, app:Landroid/content/pm/ApplicationInfo;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_295

    .line 2817
    .end local v4           #app:Landroid/content/pm/ApplicationInfo;
    :cond_2c1
    add-int/lit8 v10, v10, 0x1

    goto :goto_263

    .line 2827
    .end local v15           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v21           #uid:I
    :cond_2c4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ancestral packages: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v24, v0

    if-nez v24, :cond_325

    const-string v24, "none"

    :goto_2d9
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_334

    .line 2830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2fa
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_334

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2831
    .local v16, pkg:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2fa

    .line 2827
    .end local v16           #pkg:Ljava/lang/String;
    :cond_325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->size()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    goto :goto_2d9

    .line 2835
    :cond_334
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ever backed up: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_362
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_38d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 2837
    .restart local v16       #pkg:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_362

    .line 2840
    .end local v16           #pkg:Ljava/lang/String;
    :cond_38d
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Pending backup: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3bf
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3ea

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 2842
    .local v17, req:Lcom/android/server/BackupManagerService$BackupRequest;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "    "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3bf

    .line 2844
    .end local v17           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_3ea
    monitor-exit v22
    :try_end_3eb
    .catchall {:try_start_24f .. :try_end_3eb} :catchall_24c

    .line 2845
    return-void
.end method

.method private getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v1

    .line 1127
    :try_start_3
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    .line 1128
    .local v0, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v0, :cond_25

    .line 1129
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested unavailable transport: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_25
    monitor-exit v1

    return-object v0

    .line 1132
    .end local v0           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_27
    move-exception v2

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v2
.end method

.method private initPackageTracking()V
    .registers 23

    .prologue
    .line 596
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "ancestral"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    .line 598
    :try_start_13
    new-instance v17, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 599
    .local v17, tf:Ljava/io/RandomAccessFile;
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 600
    .local v18, version:I
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6d

    .line 601
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 602
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 604
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 605
    .local v10, numPackages:I
    if-ltz v10, :cond_6d

    .line 606
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 607
    const/4 v6, 0x0

    .local v6, i:I
    :goto_58
    if-ge v6, v10, :cond_6d

    .line 608
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 609
    .local v12, pkgName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 613
    .end local v6           #i:I
    .end local v10           #numPackages:I
    .end local v12           #pkgName:Ljava/lang/String;
    :cond_6d
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_70
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_70} :catch_f2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_70} :catch_fe

    .line 624
    .end local v17           #tf:Ljava/io/RandomAccessFile;
    .end local v18           #version:I
    :goto_70
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v20, v0

    const-string v21, "processed"

    invoke-direct/range {v19 .. v21}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    .line 625
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "processed.new"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 630
    .local v16, tempProcessedFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_9f

    .line 631
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 636
    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_158

    .line 637
    const/4 v14, 0x0

    .line 638
    .local v14, temp:Ljava/io/RandomAccessFile;
    const/4 v7, 0x0

    .line 641
    .local v7, in:Ljava/io/RandomAccessFile;
    :try_start_ad
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v19, "rws"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_ad .. :try_end_b9} :catchall_1cf
    .catch Ljava/io/EOFException; {:try_start_ad .. :try_end_b9} :catch_10f
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b9} :catch_1b3

    .line 642
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .local v15, temp:Ljava/io/RandomAccessFile;
    :try_start_b9
    new-instance v8, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    const-string v20, "r"

    move-object v0, v8

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_b9 .. :try_end_cb} :catchall_1e4
    .catch Ljava/io/EOFException; {:try_start_b9 .. :try_end_cb} :catch_1f6
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_cb} :catch_1eb

    .line 646
    .end local v7           #in:Ljava/io/RandomAccessFile;
    .local v8, in:Ljava/io/RandomAccessFile;
    :goto_cb
    :try_start_cb
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_1e7
    .catch Ljava/io/EOFException; {:try_start_cb .. :try_end_ce} :catch_1fc
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_1f0

    move-result-object v11

    .line 648
    .local v11, pkg:Ljava/lang/String;
    :try_start_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object v1, v11

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 649
    .local v9, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {v15, v11}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_cf .. :try_end_ef} :catchall_1e7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cf .. :try_end_ef} :catch_f0
    .catch Ljava/io/EOFException; {:try_start_cf .. :try_end_ef} :catch_1fc
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_ef} :catch_1f0

    goto :goto_cb

    .line 652
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    :catch_f0
    move-exception v19

    goto :goto_cb

    .line 614
    .end local v8           #in:Ljava/io/RandomAccessFile;
    .end local v11           #pkg:Ljava/lang/String;
    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .end local v16           #tempProcessedFile:Ljava/io/File;
    :catch_f2
    move-exception v19

    move-object/from16 v5, v19

    .line 616
    .local v5, fnf:Ljava/io/FileNotFoundException;
    const-string v19, "BackupManagerService"

    const-string v20, "No ancestral data"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_70

    .line 617
    .end local v5           #fnf:Ljava/io/FileNotFoundException;
    :catch_fe
    move-exception v19

    move-object/from16 v3, v19

    .line 618
    .local v3, e:Ljava/io/IOException;
    const-string v19, "BackupManagerService"

    const-string v20, "Unable to read token file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_70

    .line 657
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    .restart local v16       #tempProcessedFile:Ljava/io/File;
    :catch_10f
    move-exception v19

    move-object/from16 v3, v19

    .line 660
    .local v3, e:Ljava/io/EOFException;
    :goto_112
    :try_start_112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v19

    if-nez v19, :cond_14e

    .line 661
    const-string v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error renaming "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_112 .. :try_end_14e} :catchall_1cf

    .line 666
    :cond_14e
    if-eqz v14, :cond_153

    :try_start_150
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_1df

    .line 667
    :cond_153
    :goto_153
    if-eqz v7, :cond_158

    :try_start_155
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_1cd

    .line 673
    .end local v3           #e:Ljava/io/EOFException;
    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    :cond_158
    :goto_158
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 674
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.PACKAGE_ADDED"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    const-string v19, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v19, "package"

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 679
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 680
    .local v13, sdFilter:Landroid/content/IntentFilter;
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 683
    return-void

    .line 663
    .end local v4           #filter:Landroid/content/IntentFilter;
    .end local v13           #sdFilter:Landroid/content/IntentFilter;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    :catch_1b3
    move-exception v19

    move-object/from16 v3, v19

    .line 664
    .local v3, e:Ljava/io/IOException;
    :goto_1b6
    :try_start_1b6
    const-string v19, "BackupManagerService"

    const-string v20, "Error in processed file"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v3

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c2
    .catchall {:try_start_1b6 .. :try_end_1c2} :catchall_1cf

    .line 666
    if-eqz v14, :cond_1c7

    :try_start_1c4
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1c7} :catch_1e2

    .line 667
    :cond_1c7
    :goto_1c7
    if-eqz v7, :cond_158

    :try_start_1c9
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1cd

    goto :goto_158

    .end local v3           #e:Ljava/io/IOException;
    :catch_1cd
    move-exception v19

    goto :goto_158

    .line 666
    :catchall_1cf
    move-exception v19

    :goto_1d0
    if-eqz v14, :cond_1d5

    :try_start_1d2
    invoke-virtual {v14}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1db

    .line 667
    :cond_1d5
    :goto_1d5
    if-eqz v7, :cond_1da

    :try_start_1d7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1da
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1da} :catch_1dd

    .line 666
    :cond_1da
    :goto_1da
    throw v19

    :catch_1db
    move-exception v20

    goto :goto_1d5

    .line 667
    :catch_1dd
    move-exception v20

    goto :goto_1da

    .line 666
    .local v3, e:Ljava/io/EOFException;
    :catch_1df
    move-exception v19

    goto/16 :goto_153

    .local v3, e:Ljava/io/IOException;
    :catch_1e2
    move-exception v19

    goto :goto_1c7

    .end local v3           #e:Ljava/io/IOException;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catchall_1e4
    move-exception v19

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1d0

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catchall_1e7
    move-exception v19

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1d0

    .line 663
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1eb
    move-exception v19

    move-object/from16 v3, v19

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1b6

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1f0
    move-exception v19

    move-object/from16 v3, v19

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto :goto_1b6

    .line 657
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1f6
    move-exception v19

    move-object/from16 v3, v19

    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto/16 :goto_112

    .end local v7           #in:Ljava/io/RandomAccessFile;
    .end local v14           #temp:Ljava/io/RandomAccessFile;
    .restart local v8       #in:Ljava/io/RandomAccessFile;
    .restart local v15       #temp:Ljava/io/RandomAccessFile;
    :catch_1fc
    move-exception v19

    move-object/from16 v3, v19

    move-object v7, v8

    .end local v8           #in:Ljava/io/RandomAccessFile;
    .restart local v7       #in:Ljava/io/RandomAccessFile;
    move-object v14, v15

    .end local v15           #temp:Ljava/io/RandomAccessFile;
    .restart local v14       #temp:Ljava/io/RandomAccessFile;
    goto/16 :goto_112
.end method

.method private parseLeftoverJournals()V
    .registers 12

    .prologue
    .line 686
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_8
    if-ge v3, v6, :cond_80

    aget-object v2, v0, v3

    .line 687
    .local v2, f:Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v8

    if-eqz v8, :cond_51

    .line 691
    :cond_18
    const/4 v4, 0x0

    .line 693
    .local v4, in:Ljava/io/RandomAccessFile;
    :try_start_19
    const-string v8, "BackupManagerService"

    const-string v9, "Found stale backup journal, scheduling"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_76
    .catch Ljava/io/EOFException; {:try_start_19 .. :try_end_27} :catch_8c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_27} :catch_54

    .line 696
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .local v5, in:Ljava/io/RandomAccessFile;
    :goto_27
    :try_start_27
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 697
    .local v7, packageName:Ljava/lang/String;
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0, v7}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_85
    .catch Ljava/io/EOFException; {:try_start_27 .. :try_end_46} :catch_47
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_46} :catch_88

    goto :goto_27

    .line 700
    .end local v7           #packageName:Ljava/lang/String;
    :catch_47
    move-exception v8

    move-object v4, v5

    .line 706
    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :goto_49
    if-eqz v4, :cond_4e

    :try_start_4b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_81

    .line 707
    :cond_4e
    :goto_4e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 686
    .end local v4           #in:Ljava/io/RandomAccessFile;
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 702
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :catch_54
    move-exception v8

    move-object v1, v8

    .line 703
    .local v1, e:Ljava/lang/Exception;
    :goto_56
    :try_start_56
    const-string v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_76

    .line 706
    if-eqz v4, :cond_4e

    :try_start_70
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_4e

    :catch_74
    move-exception v8

    goto :goto_4e

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_76
    move-exception v8

    :goto_77
    if-eqz v4, :cond_7c

    :try_start_79
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_83

    .line 707
    :cond_7c
    :goto_7c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 706
    throw v8

    .line 711
    .end local v2           #f:Ljava/io/File;
    .end local v4           #in:Ljava/io/RandomAccessFile;
    :cond_80
    return-void

    .line 706
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    :catch_81
    move-exception v8

    goto :goto_4e

    :catch_83
    move-exception v9

    goto :goto_7c

    .end local v4           #in:Ljava/io/RandomAccessFile;
    .restart local v5       #in:Ljava/io/RandomAccessFile;
    :catchall_85
    move-exception v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    goto :goto_77

    .line 702
    .end local v4           #in:Ljava/io/RandomAccessFile;
    .restart local v5       #in:Ljava/io/RandomAccessFile;
    :catch_88
    move-exception v8

    move-object v1, v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/RandomAccessFile;
    .restart local v4       #in:Ljava/io/RandomAccessFile;
    goto :goto_56

    .line 700
    :catch_8c
    move-exception v8

    goto :goto_49
.end method

.method private registerTransport(Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 14
    .parameter "name"
    .parameter "transport"

    .prologue
    .line 779
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v5

    .line 781
    if-eqz p2, :cond_40

    .line 782
    :try_start_5
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_56

    .line 797
    :try_start_b
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 798
    .local v4, transportName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 799
    .local v3, stateDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 801
    new-instance v2, Ljava/io/File;

    const-string v5, "_need_init_"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 802
    .local v2, initSentinel:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 803
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_29} :catch_5c

    .line 804
    :try_start_29
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 807
    const-wide/32 v0, 0xea60

    .line 808
    .local v0, delay:J
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-long/2addr v8, v0

    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 810
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_29 .. :try_end_3f} :catchall_59

    .line 815
    .end local v0           #delay:J
    .end local v2           #initSentinel:Ljava/io/File;
    .end local v3           #stateDir:Ljava/io/File;
    .end local v4           #transportName:Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void

    .line 784
    :cond_40
    :try_start_40
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    if-eqz v6, :cond_54

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 786
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 789
    :cond_54
    monitor-exit v5

    goto :goto_3f

    .line 791
    :catchall_56
    move-exception v6

    monitor-exit v5
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_56

    throw v6

    .line 810
    .restart local v2       #initSentinel:Ljava/io/File;
    .restart local v3       #stateDir:Ljava/io/File;
    .restart local v4       #transportName:Ljava/lang/String;
    :catchall_59
    move-exception v6

    :try_start_5a
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v6
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 812
    .end local v2           #initSentinel:Ljava/io/File;
    .end local v3           #stateDir:Ljava/io/File;
    .end local v4           #transportName:Ljava/lang/String;
    :catch_5c
    move-exception v5

    goto :goto_3f
.end method

.method private removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter "packageName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p2, allPackageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 959
    .local v5, pkg:Ljava/lang/String;
    if-eqz p1, :cond_18

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 960
    :cond_18
    const/4 v7, -0x1

    .line 962
    .local v7, uid:I
    :try_start_19
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 963
    .local v4, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_24} :catch_58

    .line 969
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 970
    .local v6, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v6, :cond_4

    .line 973
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 974
    .local v1, entry:Landroid/content/pm/ApplicationInfo;
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_32

    .line 976
    invoke-virtual {v6, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 977
    invoke-virtual {p0, v5}, Lcom/android/server/BackupManagerService;->removeEverBackedUp(Ljava/lang/String;)V

    .line 981
    .end local v1           #entry:Landroid/content/pm/ApplicationInfo;
    :cond_4c
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 982
    iget-object v8, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_4

    .line 964
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Landroid/content/pm/PackageInfo;
    .end local v6           #set:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :catch_58
    move-exception v8

    move-object v0, v8

    .line 966
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_4

    .line 987
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #pkg:Ljava/lang/String;
    .end local v7           #uid:I
    :cond_5b
    return-void
.end method

.method private signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    .registers 13
    .parameter "storedSigs"
    .parameter "target"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1563
    iget-object v6, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    move v6, v8

    .line 1599
    :goto_b
    return v6

    .line 1570
    :cond_c
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 1573
    .local v0, deviceSigs:[Landroid/content/pm/Signature;
    if-eqz p1, :cond_13

    array-length v6, p1

    if-nez v6, :cond_1a

    :cond_13
    if-eqz v0, :cond_18

    array-length v6, v0

    if-nez v6, :cond_1a

    :cond_18
    move v6, v8

    .line 1575
    goto :goto_b

    .line 1577
    :cond_1a
    if-eqz p1, :cond_1e

    if-nez v0, :cond_20

    :cond_1e
    move v6, v9

    .line 1578
    goto :goto_b

    .line 1584
    :cond_20
    array-length v5, p1

    .line 1585
    .local v5, nStored:I
    array-length v4, v0

    .line 1587
    .local v4, nDevice:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v5, :cond_3e

    .line 1588
    const/4 v3, 0x0

    .line 1589
    .local v3, match:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_27
    if-ge v2, v4, :cond_34

    .line 1590
    aget-object v6, p1, v1

    aget-object v7, v0, v2

    invoke-virtual {v6, v7}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 1591
    const/4 v3, 0x1

    .line 1595
    :cond_34
    if-nez v3, :cond_3b

    move v6, v9

    .line 1596
    goto :goto_b

    .line 1589
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1587
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .end local v2           #j:I
    .end local v3           #match:Z
    :cond_3e
    move v6, v8

    .line 1599
    goto :goto_b
.end method

.method private startBackupAlarmsLocked(J)V
    .registers 13
    .parameter "delayBeforeFirstBackup"

    .prologue
    const v6, 0x493e0

    .line 2330
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 2331
    .local v7, random:Ljava/util/Random;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long v2, v0, v4

    .line 2333
    .local v2, when:J
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual {v7, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 2335
    iput-wide v2, p0, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 2336
    return-void
.end method

.method private writeToJournalLocked(Ljava/lang/String;)V
    .registers 8
    .parameter "str"

    .prologue
    .line 2142
    const/4 v1, 0x0

    .line 2144
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    if-nez v3, :cond_10

    const-string v3, "journal"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mJournalDir:Ljava/io/File;

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 2145
    :cond_10
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    const-string v4, "rws"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_55
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_2a

    .line 2146
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .local v2, out:Ljava/io/RandomAccessFile;
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2147
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_60
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_23} :catch_63

    .line 2152
    if-eqz v2, :cond_28

    :try_start_25
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_5e

    :cond_28
    :goto_28
    move-object v1, v2

    .line 2154
    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :cond_29
    :goto_29
    return-void

    .line 2148
    :catch_2a
    move-exception v3

    move-object v0, v3

    .line 2149
    .local v0, e:Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2150
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;
    :try_end_4d
    .catchall {:try_start_2c .. :try_end_4d} :catchall_55

    .line 2152
    if-eqz v1, :cond_29

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_29

    :catch_53
    move-exception v3

    goto :goto_29

    .end local v0           #e:Ljava/io/IOException;
    :catchall_55
    move-exception v3

    :goto_56
    if-eqz v1, :cond_5b

    :try_start_58
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    throw v3

    :catch_5c
    move-exception v4

    goto :goto_5b

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_5e
    move-exception v3

    goto :goto_28

    :catchall_60
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_56

    .line 2148
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_63
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_2c
.end method


# virtual methods
.method addPackageParticipantsLocked(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v0

    .line 896
    .local v0, targetApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 897
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 8
    .parameter "packageName"
    .parameter "agentBinder"

    .prologue
    .line 2445
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2446
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_3d

    .line 2447
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agentConnected pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " agent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    invoke-static {p2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 2449
    .local v0, agent:Landroid/app/IBackupAgent;
    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 2450
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 2455
    .end local v0           #agent:Landroid/app/IBackupAgent;
    :goto_36
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2456
    monitor-exit v1

    .line 2457
    return-void

    .line 2452
    :cond_3d
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Non-system process uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " claiming agent connected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2456
    :catchall_60
    move-exception v2

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v2
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2465
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_18

    .line 2466
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    .line 2467
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 2472
    :goto_11
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2473
    monitor-exit v0

    .line 2474
    return-void

    .line 2469
    :cond_18
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-system process uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " claiming agent disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2473
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method allAgentPackages()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 992
    const/16 v4, 0x40

    .line 993
    .local v4, flags:I
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    .line 994
    .local v5, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 995
    .local v0, N:I
    const/4 v7, 0x1

    sub-int v1, v0, v7

    .local v1, a:I
    :goto_f
    if-ltz v1, :cond_42

    .line 996
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 998
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    :try_start_17
    iget-object v2, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 999
    .local v2, app:Landroid/content/pm/ApplicationInfo;
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const v8, 0x8000

    and-int/2addr v7, v8

    if-eqz v7, :cond_25

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v7, :cond_2b

    .line 1001
    :cond_25
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 995
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :goto_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1005
    .restart local v2       #app:Landroid/content/pm/ApplicationInfo;
    :cond_2b
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x400

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1007
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_3b} :catch_3c

    goto :goto_28

    .line 1009
    .end local v2           #app:Landroid/content/pm/ApplicationInfo;
    :catch_3c
    move-exception v7

    move-object v3, v7

    .line 1010
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_28

    .line 1013
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    :cond_42
    return-object v5
.end method

.method public backupNow()V
    .registers 5

    .prologue
    .line 2225
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "backupNow"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2232
    const-wide/32 v2, 0x36ee80

    :try_start_f
    invoke-direct {p0, v2, v3}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_23

    .line 2234
    :try_start_12
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_12 .. :try_end_17} :catch_19

    .line 2239
    :goto_17
    :try_start_17
    monitor-exit v1

    .line 2240
    return-void

    .line 2235
    :catch_19
    move-exception v2

    move-object v0, v2

    .line 2237
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "BackupManagerService"

    const-string v3, "run-backup intent cancelled!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 2239
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_23

    throw v2
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .registers 10
    .parameter "packageName"
    .parameter "transport"

    .prologue
    .line 2520
    const/4 v1, 0x1

    .line 2521
    .local v1, needPermission:Z
    if-nez p2, :cond_1a

    .line 2522
    iget-object p2, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 2524
    if-eqz p1, :cond_1a

    .line 2525
    const/4 v0, 0x0

    .line 2527
    .local v0, app:Landroid/content/pm/PackageInfo;
    :try_start_8
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_34

    move-result-object v0

    .line 2533
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v3, v4, :cond_1a

    .line 2537
    const/4 v1, 0x0

    .line 2542
    .end local v0           #app:Landroid/content/pm/PackageInfo;
    :cond_1a
    if-eqz v1, :cond_25

    .line 2543
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BACKUP"

    const-string v5, "beginRestoreSession"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    :cond_25
    monitor-enter p0

    .line 2550
    :try_start_26
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v3, :cond_6d

    .line 2551
    const-string v3, "BackupManagerService"

    const-string v4, "Restore session requested but one already active"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    const/4 v3, 0x0

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_82

    .line 2557
    :goto_33
    return-object v3

    .line 2528
    .restart local v0       #app:Landroid/content/pm/PackageInfo;
    :catch_34
    move-exception v3

    move-object v2, v3

    .line 2529
    .local v2, nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asked to restore nonexistent pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2554
    .end local v0           #app:Landroid/content/pm/PackageInfo;
    .end local v2           #nnf:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6d
    :try_start_6d
    new-instance v3, Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 2555
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v4, 0x8

    const-wide/32 v5, 0xea60

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2556
    monitor-exit p0
    :try_end_7f
    .catchall {:try_start_6d .. :try_end_7f} :catchall_82

    .line 2557
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    goto :goto_33

    .line 2556
    :catchall_82
    move-exception v3

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v3
.end method

.method bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;
    .registers 14
    .parameter "app"
    .parameter "mode"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, agent:Landroid/app/IBackupAgent;
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1139
    const/4 v5, 0x1

    :try_start_7
    iput-boolean v5, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    .line 1140
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_75

    .line 1142
    :try_start_c
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v5, p1, p2}, Landroid/app/IActivityManager;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v5

    if-eqz v5, :cond_72

    .line 1143
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "awaiting agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long v2, v5, v7

    .line 1149
    .local v2, timeoutMark:J
    :goto_34
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-eqz v5, :cond_51

    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_51

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_3f
    .catchall {:try_start_c .. :try_end_3f} :catchall_75
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_3f} :catch_78

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_51

    .line 1151
    :try_start_44
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAgentConnectLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_75
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_4b} :catch_4c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4b} :catch_78

    goto :goto_34

    .line 1152
    :catch_4c
    move-exception v5

    move-object v1, v5

    .line 1154
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_75

    move-object v4, v9

    .line 1169
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #timeoutMark:J
    :goto_50
    return-object v4

    .line 1159
    .restart local v2       #timeoutMark:J
    :cond_51
    :try_start_51
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mConnecting:Z

    if-ne v5, v10, :cond_70

    .line 1160
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout waiting for agent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_51 .. :try_end_6d} :catchall_75
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_6d} :catch_78

    .line 1161
    :try_start_6d
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_75

    move-object v4, v9

    goto :goto_50

    .line 1163
    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mConnectedAgent:Landroid/app/IBackupAgent;
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_75
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_72} :catch_78

    .line 1168
    .end local v2           #timeoutMark:J
    :cond_72
    :goto_72
    :try_start_72
    monitor-exit v4

    move-object v4, v0

    .line 1169
    goto :goto_50

    .line 1168
    :catchall_75
    move-exception v5

    monitor-exit v4
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_75

    throw v5

    .line 1165
    :catch_78
    move-exception v5

    goto :goto_72
.end method

.method clearApplicationDataSynchronous(Ljava/lang/String;)V
    .registers 12
    .parameter "packageName"

    .prologue
    .line 1176
    :try_start_0
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1177
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_10

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_31

    .line 1208
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_f
    return-void

    .line 1182
    :catch_10
    move-exception v5

    move-object v0, v5

    .line 1183
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tried to clear data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1187
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_31
    new-instance v2, Lcom/android/server/BackupManagerService$ClearDataObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BackupManagerService$ClearDataObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    .line 1189
    .local v2, observer:Lcom/android/server/BackupManagerService$ClearDataObserver;
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1190
    const/4 v6, 0x1

    :try_start_3a
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_63

    .line 1192
    :try_start_3c
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6, p1, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_63
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_41} :catch_68

    .line 1198
    :goto_41
    :try_start_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x2710

    add-long v3, v6, v8

    .line 1199
    .local v3, timeoutMark:J
    :goto_49
    iget-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    if-eqz v6, :cond_66

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_63

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_66

    .line 1201
    :try_start_55
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mClearDataLock:Ljava/lang/Object;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_63
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_5c} :catch_5d

    goto :goto_49

    .line 1202
    :catch_5d
    move-exception v6

    move-object v0, v6

    .line 1204
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    :try_start_60
    iput-boolean v6, p0, Lcom/android/server/BackupManagerService;->mClearingData:Z

    goto :goto_49

    .line 1207
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v3           #timeoutMark:J
    :catchall_63
    move-exception v6

    monitor-exit v5
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_63

    throw v6

    .restart local v3       #timeoutMark:J
    :cond_66
    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_63

    goto :goto_f

    .line 1193
    .end local v3           #timeoutMark:J
    :catch_68
    move-exception v6

    goto :goto_41
.end method

.method public clearBackupData(Ljava/lang/String;)V
    .registers 22
    .parameter "packageName"

    .prologue
    .line 2178
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object v15, v0

    const/16 v16, 0x40

    move-object v0, v15

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_9e

    move-result-object v10

    .line 2187
    .local v10, info:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    move-object v15, v0

    const-string v16, "android.permission.BACKUP"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-virtual/range {v15 .. v18}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v15

    const/16 v16, -0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_c3

    .line 2189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object v15, v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 2205
    .local v6, apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    :cond_39
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 2206
    .local v5, app:Landroid/content/pm/ApplicationInfo;
    iget-object v15, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3d

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object v15, v0

    monitor-enter v15

    .line 2210
    :try_start_5a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2211
    .local v12, oldId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    new-instance v18, Lcom/android/server/BackupManagerService$ClearParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$ClearParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual/range {v16 .. v18}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2214
    .local v11, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2215
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2216
    monitor-exit v15
    :try_end_9d
    .catchall {:try_start_5a .. :try_end_9d} :catchall_e7

    .line 2220
    .end local v5           #app:Landroid/content/pm/ApplicationInfo;
    .end local v6           #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Landroid/content/pm/PackageInfo;
    .end local v11           #msg:Landroid/os/Message;
    .end local v12           #oldId:J
    :cond_9d
    :goto_9d
    return-void

    .line 2179
    :catch_9e
    move-exception v15

    move-object v7, v15

    .line 2180
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "BackupManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No such package \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' - not clearing backup data"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 2194
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10       #info:Landroid/content/pm/PackageInfo;
    :cond_c3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2195
    .restart local v6       #apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 2196
    .local v4, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_d2
    if-ge v8, v4, :cond_39

    .line 2197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashSet;

    .line 2198
    .local v14, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v14, :cond_e4

    .line 2199
    invoke-virtual {v6, v14}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2196
    :cond_e4
    add-int/lit8 v8, v8, 0x1

    goto :goto_d2

    .line 2216
    .end local v4           #N:I
    .end local v8           #i:I
    .end local v14           #s:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5       #app:Landroid/content/pm/ApplicationInfo;
    .restart local v9       #i$:Ljava/util/Iterator;
    :catchall_e7
    move-exception v16

    :try_start_e8
    monitor-exit v15
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v16
.end method

.method clearRestoreSession(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V
    .registers 4
    .parameter "currentSession"

    .prologue
    .line 2561
    monitor-enter p0

    .line 2562
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eq p1, v0, :cond_e

    .line 2563
    const-string v0, "BackupManagerService"

    const-string v1, "ending non-current restore session"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :goto_c
    monitor-exit p0

    .line 2570
    return-void

    .line 2566
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    .line 2567
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    goto :goto_c

    .line 2569
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .registers 6
    .parameter "packageName"

    .prologue
    .line 2159
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService;->dataChangedTargets(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 2160
    .local v0, targets:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_33

    .line 2161
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataChanged but no participant pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :goto_32
    return-void

    .line 2166
    :cond_33
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    new-instance v2, Lcom/android/server/BackupManagerService$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/BackupManagerService$3;-><init>(Lcom/android/server/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_32
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2777
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 2779
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2781
    return-void

    .line 2779
    :catchall_b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getAvailableRestoreToken(Ljava/lang/String;)J
    .registers 6
    .parameter "packageName"

    .prologue
    .line 1222
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1223
    .local v0, token:J
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1224
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1225
    iget-wide v0, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 1227
    :cond_f
    monitor-exit v2

    .line 1228
    return-wide v0

    .line 1227
    :catchall_11
    move-exception v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v3
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 2397
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 2401
    :try_start_c
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_21

    .line 2402
    .local v1, transport:Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1e

    .line 2404
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1d

    move-result-object v0

    .line 2407
    .local v0, intent:Landroid/content/Intent;
    :try_start_1a
    monitor-exit v2

    move-object v2, v0

    .line 2414
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1c
    return-object v2

    .line 2408
    :catch_1d
    move-exception v3

    .line 2412
    :cond_1e
    monitor-exit v2

    .line 2414
    const/4 v2, 0x0

    goto :goto_1c

    .line 2412
    .end local v1           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v3
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getCurrentTransport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "transportName"

    .prologue
    .line 2423
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BACKUP"

    const-string v4, "getConfigurationIntent"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v2

    .line 2427
    :try_start_c
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/backup/IBackupTransport;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_21

    .line 2428
    .local v1, transport:Lcom/android/internal/backup/IBackupTransport;
    if-eqz v1, :cond_1e

    .line 2430
    :try_start_16
    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_21
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_1d

    move-result-object v0

    .line 2432
    .local v0, text:Ljava/lang/String;
    :try_start_1a
    monitor-exit v2

    move-object v2, v0

    .line 2439
    .end local v0           #text:Ljava/lang/String;
    :goto_1c
    return-object v2

    .line 2433
    :catch_1d
    move-exception v3

    .line 2437
    :cond_1e
    monitor-exit v2

    .line 2439
    const/4 v2, 0x0

    goto :goto_1c

    .line 2437
    .end local v1           #transport:Lcom/android/internal/backup/IBackupTransport;
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v3
.end method

.method public isBackupEnabled()Z
    .registers 4

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "isBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2341
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    return v0
.end method

.method public listAllTransports()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 2354
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "listAllTransports"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    const/4 v3, 0x0

    .line 2357
    .local v3, list:[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2358
    .local v2, known:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2359
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 2360
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 2364
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/backup/IBackupTransport;>;"
    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_42

    .line 2365
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 2366
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2368
    :cond_42
    return-object v3
.end method

.method logBackupComplete(Ljava/lang/String;)V
    .registers 9
    .parameter "packageName"

    .prologue
    .line 1038
    const-string v3, "@pm@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1054
    :goto_8
    return-void

    .line 1040
    :cond_9
    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v3

    .line 1041
    :try_start_c
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    monitor-exit v3

    goto :goto_8

    .line 1053
    :catchall_16
    move-exception v4

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v4

    .line 1043
    :cond_19
    const/4 v1, 0x0

    .line 1045
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_1a
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    const-string v5, "rws"

    invoke-direct {v2, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_63
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_35

    .line 1046
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .local v2, out:Ljava/io/RandomAccessFile;
    :try_start_23
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1047
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_71

    .line 1051
    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_16
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_6c

    :cond_32
    :goto_32
    move-object v1, v2

    .line 1053
    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_16

    goto :goto_8

    .line 1048
    :catch_35
    move-exception v4

    move-object v0, v4

    .line 1049
    .local v0, e:Ljava/io/IOException;
    :goto_37
    :try_start_37
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t log backup of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_63

    .line 1051
    if-eqz v1, :cond_33

    :try_start_5d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_16
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_33

    :catch_61
    move-exception v4

    goto :goto_33

    .end local v0           #e:Ljava/io/IOException;
    :catchall_63
    move-exception v4

    :goto_64
    if-eqz v1, :cond_69

    :try_start_66
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_16
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    :cond_69
    :goto_69
    :try_start_69
    throw v4
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_16

    :catch_6a
    move-exception v5

    goto :goto_69

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_6c
    move-exception v4

    goto :goto_32

    :catchall_6e
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_64

    .line 1048
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v2       #out:Ljava/io/RandomAccessFile;
    :catch_71
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    goto :goto_37
.end method

.method public opComplete(I)V
    .registers 5
    .parameter "token"

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2577
    :try_start_3
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2578
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2579
    monitor-exit v0

    .line 2580
    return-void

    .line 2579
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method prepareOperationTimeout(IJ)V
    .registers 8
    .parameter "token"
    .parameter "interval"

    .prologue
    const/4 v3, 0x0

    .line 1256
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1258
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1259
    return-void
.end method

.method recordInitPendingLocked(ZLjava/lang/String;)V
    .registers 8
    .parameter "isPending"
    .parameter "transportName"

    .prologue
    .line 719
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    .line 720
    .local v2, transport:Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v3

    .line 721
    .local v3, transportDirName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-direct {v1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 722
    .local v1, stateDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "_need_init_"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 724
    .local v0, initPendingFile:Ljava/io/File;
    if-eqz p1, :cond_26

    .line 728
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_2f

    .line 730
    :try_start_1d
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_25} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_25} :catch_2f

    .line 742
    .end local v0           #initPendingFile:Ljava/io/File;
    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v3           #transportDirName:Ljava/lang/String;
    :goto_25
    return-void

    .line 736
    .restart local v0       #initPendingFile:Ljava/io/File;
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v3       #transportDirName:Ljava/lang/String;
    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 737
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v4, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_25

    .line 739
    .end local v0           #initPendingFile:Ljava/io/File;
    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v3           #transportDirName:Ljava/lang/String;
    :catch_2f
    move-exception v4

    goto :goto_25

    .line 731
    .restart local v0       #initPendingFile:Ljava/io/File;
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v3       #transportDirName:Ljava/lang/String;
    :catch_31
    move-exception v4

    goto :goto_25
.end method

.method removeEverBackedUp(Ljava/lang/String;)V
    .registers 12
    .parameter "packageName"

    .prologue
    .line 1060
    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    monitor-enter v6

    .line 1064
    :try_start_3
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    const-string v8, "processed.new"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_9b

    .line 1065
    .local v5, tempKnownFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 1067
    .local v2, known:Ljava/io/RandomAccessFile;
    :try_start_d
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rws"

    invoke-direct {v3, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_94
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_91

    .line 1068
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .local v3, known:Ljava/io/RandomAccessFile;
    :try_start_14
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1069
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1070
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_2f

    goto :goto_1f

    .line 1078
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #s:Ljava/lang/String;
    :catch_2f
    move-exception v7

    move-object v0, v7

    move-object v2, v3

    .line 1083
    .end local v3           #known:Ljava/io/RandomAccessFile;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    :goto_32
    :try_start_32
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error rewriting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1085
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1086
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_59
    .catchall {:try_start_32 .. :try_end_59} :catchall_94

    .line 1088
    if-eqz v2, :cond_5e

    :try_start_5b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_a0

    .line 1090
    .end local v0           #e:Ljava/io/IOException;
    :cond_5e
    :goto_5e
    :try_start_5e
    monitor-exit v6
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_9b

    .line 1091
    return-void

    .line 1073
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #known:Ljava/io/RandomAccessFile;
    :cond_60
    :try_start_60
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_a6
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_2f

    .line 1074
    const/4 v2, 0x0

    .line 1075
    .end local v3           #known:Ljava/io/RandomAccessFile;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    :try_start_64
    iget-object v7, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v5, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_a2

    .line 1076
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t rename "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_91
    .catchall {:try_start_64 .. :try_end_91} :catchall_94
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_91} :catch_91

    .line 1078
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_91
    move-exception v7

    move-object v0, v7

    goto :goto_32

    .line 1088
    :catchall_94
    move-exception v7

    :goto_95
    if-eqz v2, :cond_9a

    :try_start_97
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_9e

    :cond_9a
    :goto_9a
    :try_start_9a
    throw v7

    .line 1090
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .end local v5           #tempKnownFile:Ljava/io/File;
    :catchall_9b
    move-exception v7

    monitor-exit v6
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9b

    throw v7

    .line 1088
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    .restart local v5       #tempKnownFile:Ljava/io/File;
    :catch_9e
    move-exception v8

    goto :goto_9a

    :catch_a0
    move-exception v7

    goto :goto_5e

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_a2
    if-eqz v2, :cond_5e

    :try_start_a4
    throw v2
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_9b
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a5} :catch_a0

    goto :goto_5e

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #known:Ljava/io/RandomAccessFile;
    .restart local v3       #known:Ljava/io/RandomAccessFile;
    :catchall_a6
    move-exception v7

    move-object v2, v3

    .end local v3           #known:Ljava/io/RandomAccessFile;
    .restart local v2       #known:Ljava/io/RandomAccessFile;
    goto :goto_95
.end method

.method removePackageParticipantsLocked(Ljava/lang/String;)V
    .registers 7
    .parameter "packageName"

    .prologue
    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_e

    .line 938
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 946
    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 947
    return-void

    .line 941
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v2

    .line 942
    .local v2, knownPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 943
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16
.end method

.method resetBackupState(Ljava/io/File;)V
    .registers 14
    .parameter "stateFileDir"

    .prologue
    .line 748
    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v9

    .line 750
    :try_start_3
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mEverStoredApps:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    .line 751
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mEverStored:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 753
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    .line 754
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 757
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, arr$:[Ljava/io/File;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1a
    if-ge v4, v5, :cond_30

    aget-object v7, v2, v4

    .line 759
    .local v7, sf:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_need_init_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2d

    .line 760
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 757
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 765
    .end local v7           #sf:Ljava/io/File;
    :cond_30
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 766
    .local v0, N:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .local v3, i:I
    :goto_37
    if-ge v3, v0, :cond_63

    .line 767
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 768
    .local v8, uid:I
    iget-object v10, p0, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashSet;

    .line 769
    .local v6, participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 770
    .local v1, app:Landroid/content/pm/ApplicationInfo;
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_4b

    .line 773
    .end local v0           #N:I
    .end local v1           #app:Landroid/content/pm/ApplicationInfo;
    .end local v2           #arr$:[Ljava/io/File;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    .end local v6           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #uid:I
    :catchall_5d
    move-exception v10

    monitor-exit v9
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v10

    .line 766
    .restart local v0       #N:I
    .restart local v2       #arr$:[Ljava/io/File;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #len$:I
    .restart local v6       #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v8       #uid:I
    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 773
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #participants:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/content/pm/ApplicationInfo;>;"
    .end local v8           #uid:I
    :cond_63
    :try_start_63
    monitor-exit v9
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5d

    .line 774
    return-void
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .registers 13
    .parameter "packageName"
    .parameter "token"

    .prologue
    .line 2479
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2b

    .line 2480
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-system process uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attemping install-time restore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :goto_2a
    return-void

    .line 2485
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/android/server/BackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v4

    .line 2489
    .local v4, restoreSet:J
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v0, :cond_67

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_67

    .line 2497
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 2498
    .local v6, pkg:Landroid/content/pm/PackageInfo;
    iput-object p1, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2500
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2501
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2502
    .local v9, msg:Landroid/os/Message;
    new-instance v0, Lcom/android/server/BackupManagerService$RestoreParams;

    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/BackupManagerService$RestoreParams;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2504
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v0, v9}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2a

    .line 2510
    .end local v6           #pkg:Landroid/content/pm/PackageInfo;
    .end local v9           #msg:Landroid/os/Message;
    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p2}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_6d

    goto :goto_2a

    .line 2511
    :catch_6d
    move-exception v0

    goto :goto_2a
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "transport"

    .prologue
    .line 2375
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "selectBackupTransport"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v1

    .line 2378
    const/4 v0, 0x0

    .line 2379
    .local v0, prevTransport:Ljava/lang/String;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 2380
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 2381
    iput-object p1, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    .line 2382
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "backup_transport"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2384
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectBackupTransport() set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    :goto_48
    monitor-exit v1

    return-object v0

    .line 2387
    :cond_4a
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to select unavailable transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 2390
    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_d .. :try_end_65} :catchall_63

    throw v2
.end method

.method public setAutoRestore(Z)V
    .registers 5
    .parameter "doAutoRestore"

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "setBackupEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto restore => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    monitor-enter p0

    .line 2295
    :try_start_22
    iget-object v0, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "backup_auto_restore"

    if-eqz p1, :cond_34

    const/4 v2, 0x1

    :goto_2d
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2297
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mAutoRestore:Z

    .line 2298
    monitor-exit p0

    .line 2299
    return-void

    .line 2295
    :cond_34
    const/4 v2, 0x0

    goto :goto_2d

    .line 2298
    :catchall_36
    move-exception v0

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public setBackupEnabled(Z)V
    .registers 12
    .parameter "enable"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2244
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BACKUP"

    const-string v6, "setBackupEnabled"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup enabled => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget-boolean v3, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 2250
    .local v3, wasEnabled:Z
    monitor-enter p0

    .line 2251
    :try_start_26
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "backup_enabled"

    if-eqz p1, :cond_4a

    move v6, v8

    :goto_31
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2253
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    .line 2254
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_4c

    .line 2256
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2257
    if-eqz p1, :cond_4f

    if-nez v3, :cond_4f

    :try_start_3e
    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_4f

    .line 2259
    const-wide/32 v5, 0x36ee80

    invoke-direct {p0, v5, v6}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 2284
    :cond_48
    :goto_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_82

    .line 2285
    return-void

    :cond_4a
    move v6, v7

    .line 2251
    goto :goto_31

    .line 2254
    :catchall_4c
    move-exception v4

    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v4

    .line 2260
    :cond_4f
    if-nez p1, :cond_48

    .line 2264
    :try_start_51
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2269
    if-eqz v3, :cond_48

    iget-boolean v5, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    if-eqz v5, :cond_48

    .line 2273
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_82

    .line 2274
    :try_start_61
    new-instance v0, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/BackupManagerService;->mTransports:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2275
    .local v0, allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_61 .. :try_end_6d} :catchall_85

    .line 2277
    :try_start_6d
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2278
    .local v2, transport:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v2}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    goto :goto_71

    .line 2284
    .end local v0           #allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #transport:Ljava/lang/String;
    :catchall_82
    move-exception v5

    monitor-exit v4
    :try_end_84
    .catchall {:try_start_6d .. :try_end_84} :catchall_82

    throw v5

    .line 2275
    :catchall_85
    move-exception v6

    :try_start_86
    monitor-exit v5
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    :try_start_87
    throw v6

    .line 2280
    .restart local v0       #allTransports:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_88
    iget-object v5, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_94
    .catchall {:try_start_87 .. :try_end_94} :catchall_82

    goto :goto_48
.end method

.method public setBackupProvisioned(Z)V
    .registers 6
    .parameter "available"

    .prologue
    .line 2303
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BACKUP"

    const-string v3, "setBackupProvisioned"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    iget-boolean v0, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 2307
    .local v0, wasProvisioned:Z
    monitor-enter p0

    .line 2308
    :try_start_c
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "backup_provisioned"

    if-eqz p1, :cond_30

    const/4 v3, 0x1

    :goto_17
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2310
    iput-boolean p1, p0, Lcom/android/server/BackupManagerService;->mProvisioned:Z

    .line 2311
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_32

    .line 2313
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2314
    if-eqz p1, :cond_35

    if-nez v0, :cond_35

    :try_start_24
    iget-boolean v2, p0, Lcom/android/server/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_35

    .line 2316
    const-wide/32 v2, 0x2932e00

    invoke-direct {p0, v2, v3}, Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V

    .line 2322
    :cond_2e
    :goto_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_46

    .line 2323
    return-void

    .line 2308
    :cond_30
    const/4 v3, 0x0

    goto :goto_17

    .line 2311
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1

    .line 2317
    :cond_35
    if-nez p1, :cond_2e

    .line 2319
    :try_start_37
    const-string v2, "BackupManagerService"

    const-string v3, "Backup service no longer provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/BackupManagerService;->mRunBackupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_2e

    .line 2322
    :catchall_46
    move-exception v2

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_46

    throw v2
.end method

.method updatePackageParticipantsLocked(Ljava/lang/String;)V
    .registers 8
    .parameter "packageName"

    .prologue
    .line 1019
    if-nez p1, :cond_a

    .line 1020
    const-string v4, "BackupManagerService"

    const-string v5, "updatePackageParticipants called with null package name"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :goto_9
    return-void

    .line 1026
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v1

    .line 1027
    .local v1, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    .local v0, allAppNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 1029
    .local v3, pkg:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1031
    .end local v3           #pkg:Landroid/content/pm/PackageInfo;
    :cond_29
    invoke-direct {p0, p1, v0}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    .line 1032
    invoke-direct {p0, p1, v1}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLockedInner(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_9
.end method

.method waitUntilOperationComplete(I)Z
    .registers 7
    .parameter "token"

    .prologue
    const/4 v4, 0x1

    .line 1234
    const/4 v0, 0x0

    .line 1235
    .local v0, finalState:I
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1237
    :goto_5
    :try_start_5
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_22
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_b} :catch_16

    move-result v0

    if-nez v0, :cond_17

    .line 1239
    :try_start_e
    iget-object v2, p0, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_22
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_14
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_13} :catch_16

    goto :goto_5

    .line 1240
    :catch_14
    move-exception v2

    goto :goto_5

    .line 1242
    :catch_16
    move-exception v2

    .line 1246
    :cond_17
    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_22

    .line 1247
    iget-object v1, p0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1250
    if-ne v0, v4, :cond_25

    move v1, v4

    :goto_21
    return v1

    .line 1246
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2

    .line 1250
    :cond_25
    const/4 v1, 0x0

    goto :goto_21
.end method

.method writeRestoreTokens()V
    .registers 7

    .prologue
    .line 1098
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mTokenFile:Ljava/io/File;

    const-string v5, "rwd"

    invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1101
    .local v0, af:Ljava/io/RandomAccessFile;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1104
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1105
    iget-wide v4, p0, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1108
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    if-nez v4, :cond_23

    .line 1109
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1118
    :cond_1f
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 1122
    .end local v0           #af:Ljava/io/RandomAccessFile;
    :goto_22
    return-void

    .line 1111
    .restart local v0       #af:Ljava/io/RandomAccessFile;
    :cond_23
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1113
    iget-object v4, p0, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1114
    .local v3, pkgName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_41} :catch_42

    goto :goto_32

    .line 1119
    .end local v0           #af:Ljava/io/RandomAccessFile;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pkgName:Ljava/lang/String;
    :catch_42
    move-exception v4

    move-object v1, v4

    .line 1120
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    const-string v5, "Unable to write token file:"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
