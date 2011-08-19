.class Lcom/android/server/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupThread"


# instance fields
.field mJournal:Ljava/io/File;

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mStateDir:Ljava/io/File;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V
    .registers 8
    .parameter
    .parameter "transport"
    .parameter
    .parameter "journal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1271
    .local p3, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1273
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 1274
    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    .line 1277
    :try_start_b
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 1281
    :goto_18
    return-void

    .line 1278
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method private doQueuedBackups(Lcom/android/internal/backup/IBackupTransport;)I
    .registers 13
    .parameter "transport"

    .prologue
    const/4 v10, 0x0

    .line 1395
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1396
    .local v5, request:Lcom/android/server/BackupManagerService$BackupRequest;
    const-string v7, "PerformBackupThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "starting agent for backup of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :try_start_2b
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_39} :catch_6d

    .line 1409
    const/4 v0, 0x0

    .line 1410
    .local v0, agent:Landroid/app/IBackupAgent;
    iget-boolean v7, v5, Lcom/android/server/BackupManagerService$BackupRequest;->fullBackup:Z

    if-eqz v7, :cond_77

    const/4 v7, 0x1

    move v4, v7

    .line 1414
    .local v4, mode:I
    :goto_40
    :try_start_40
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v8, Landroid/os/WorkSource;

    iget-object v9, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1415
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v4}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    .line 1416
    if-eqz v0, :cond_a9

    .line 1417
    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/BackupManagerService$PerformBackupTask;->processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_92
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_5d} :catch_79

    move-result v6

    .line 1418
    .local v6, result:I
    if-eqz v6, :cond_a9

    .line 1425
    :try_start_60
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v7}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6b} :catch_b6

    :goto_6b
    move v7, v6

    .line 1432
    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v4           #mode:I
    .end local v5           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v6           #result:I
    :goto_6c
    return v7

    .line 1404
    .restart local v5       #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :catch_6d
    move-exception v7

    move-object v1, v7

    .line 1405
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "PerformBackupThread"

    const-string v8, "Package does not exist; skipping"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #agent:Landroid/app/IBackupAgent;
    :cond_77
    move v4, v10

    .line 1410
    goto :goto_40

    .line 1420
    .restart local v4       #mode:I
    :catch_79
    move-exception v7

    move-object v2, v7

    .line 1422
    .local v2, ex:Ljava/lang/SecurityException;
    :try_start_7b
    const-string v7, "PerformBackupThread"

    const-string v8, "error in bind/backup"

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_92

    .line 1425
    :try_start_82
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v7}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8d} :catch_8f

    goto/16 :goto_7

    .line 1426
    .end local v2           #ex:Ljava/lang/SecurityException;
    :catch_8f
    move-exception v7

    goto/16 :goto_7

    .line 1424
    :catchall_92
    move-exception v7

    .line 1425
    :try_start_93
    iget-object v8, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v8}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v8, v9}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9e} :catch_b8

    .line 1424
    :goto_9e
    throw v7

    .line 1430
    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v4           #mode:I
    .end local v5           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_9f
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    move v7, v10

    .line 1432
    goto :goto_6c

    .line 1425
    .restart local v0       #agent:Landroid/app/IBackupAgent;
    .restart local v4       #mode:I
    .restart local v5       #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_a9
    :try_start_a9
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v7}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_b4} :catch_8f

    goto/16 :goto_7

    .line 1426
    .restart local v6       #result:I
    :catch_b6
    move-exception v7

    goto :goto_6b

    .end local v6           #result:I
    :catch_b8
    move-exception v8

    goto :goto_9e
.end method

.method private processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .registers 25
    .parameter "request"
    .parameter "agent"
    .parameter "transport"

    .prologue
    .line 1437
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1440
    .local v14, packageName:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1441
    .local v16, savedStateName:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1442
    .local v10, backupDataName:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".new"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1444
    .local v12, newStateName:Ljava/io/File;
    const/4 v5, 0x0

    .line 1445
    .local v5, savedState:Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 1446
    .local v6, backupData:Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .line 1449
    .local v7, newState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 1454
    .local v8, token:I
    :try_start_5f
    const-string v4, "@pm@"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 1456
    new-instance v13, Landroid/content/pm/PackageInfo;

    invoke-direct {v13}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1457
    .local v13, packInfo:Landroid/content/pm/PackageInfo;
    iput-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1465
    :goto_6e
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$BackupRequest;->fullBackup:Z

    move v4, v0

    if-nez v4, :cond_7e

    .line 1466
    const/high16 v4, 0x1800

    move-object/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 1471
    :cond_7e
    const/high16 v4, 0x3c00

    invoke-static {v10, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1476
    const/high16 v4, 0x3c00

    invoke-static {v12, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    const-wide/16 v19, 0x7530

    move-object v0, v4

    move v1, v8

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJ)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v9, v4, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v4, p2

    invoke-interface/range {v4 .. v9}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    invoke-virtual {v4, v8}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v18

    .line 1486
    .local v18, success:Z
    if-nez v18, :cond_121

    .line 1488
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Backup timeout"

    .end local v8           #token:I
    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b7
    .catchall {:try_start_5f .. :try_end_b7} :catchall_195
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_b7} :catch_b7

    .line 1493
    .end local v13           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v18           #success:Z
    :catch_b7
    move-exception v4

    move-object v11, v4

    .line 1494
    .local v11, e:Ljava/lang/Exception;
    :try_start_b9
    const-string v4, "PerformBackupThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error backing up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1495
    const/16 v4, 0xb07

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v11           #e:Ljava/lang/Exception;
    aput-object v11, v8, v9

    invoke-static {v4, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1496
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1497
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_e9
    .catchall {:try_start_b9 .. :try_end_e9} :catchall_195

    .line 1498
    const/4 v4, 0x1

    .line 1500
    if-eqz v5, :cond_ef

    :try_start_ec
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_1fa

    .line 1501
    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :cond_ef
    :goto_ef
    if-eqz v6, :cond_f4

    :try_start_f1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_1fd

    .line 1502
    :cond_f4
    :goto_f4
    if-eqz v7, :cond_f9

    :try_start_f6
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_200

    .line 1503
    :cond_f9
    :goto_f9
    const/4 v7, 0x0

    move-object v6, v7

    move-object v5, v7

    .line 1504
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1505
    :try_start_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    .line 1506
    monitor-exit v8
    :try_end_10f
    .catchall {:try_start_104 .. :try_end_10f} :catchall_203

    .line 1550
    .end local v10           #backupDataName:Ljava/io/File;
    :goto_10f
    return v4

    .line 1459
    .restart local v8       #token:I
    .restart local v10       #backupDataName:Ljava/io/File;
    :cond_110
    :try_start_110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v9, 0x40

    invoke-virtual {v4, v14, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .restart local v13       #packInfo:Landroid/content/pm/PackageInfo;
    goto/16 :goto_6e

    .line 1491
    .restart local v18       #success:Z
    :cond_121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/android/server/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_110 .. :try_end_129} :catchall_195
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_129} :catch_b7

    .line 1500
    if-eqz v5, :cond_12e

    :try_start_12b
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_206

    .line 1501
    :cond_12e
    :goto_12e
    if-eqz v6, :cond_133

    :try_start_130
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_133} :catch_209

    .line 1502
    :cond_133
    :goto_133
    if-eqz v7, :cond_138

    :try_start_135
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_20c

    .line 1503
    :cond_138
    :goto_138
    const/4 v7, 0x0

    move-object v6, v7

    move-object v5, v7

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1505
    :try_start_143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v8, v0

    .end local v8           #token:I
    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    .line 1506
    monitor-exit v4
    :try_end_14e
    .catchall {:try_start_143 .. :try_end_14e} :catchall_20f

    .line 1510
    const/4 v15, 0x0

    .line 1512
    .local v15, result:I
    :try_start_14f
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v17, v0

    .line 1513
    .local v17, size:I
    if-lez v17, :cond_170

    .line 1514
    if-nez v15, :cond_16a

    .line 1515
    const/high16 v4, 0x1000

    invoke-static {v10, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 1517
    move-object/from16 v0, p3

    move-object v1, v13

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v15

    .line 1525
    :cond_16a
    if-nez v15, :cond_170

    .line 1526
    invoke-interface/range {p3 .. p3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v15

    .line 1535
    :cond_170
    if-nez v15, :cond_1bc

    .line 1536
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1537
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1538
    const/16 v4, 0xb08

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .end local v10           #backupDataName:Ljava/io/File;
    aput-object v10, v8, v9

    invoke-static {v4, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_18d
    .catchall {:try_start_14f .. :try_end_18d} :catchall_1ea
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_18d} :catch_1c2

    .line 1547
    :goto_18d
    if-eqz v6, :cond_192

    :try_start_18f
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_1e8

    .end local v17           #size:I
    :cond_192
    :goto_192
    move v4, v15

    .line 1550
    goto/16 :goto_10f

    .line 1500
    .end local v13           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v15           #result:I
    .end local v18           #success:Z
    .restart local v10       #backupDataName:Ljava/io/File;
    :catchall_195
    move-exception v4

    if-eqz v5, :cond_19b

    :try_start_198
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_1f1

    .line 1501
    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :cond_19b
    :goto_19b
    if-eqz v6, :cond_1a0

    :try_start_19d
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1f3

    .line 1502
    :cond_1a0
    :goto_1a0
    if-eqz v7, :cond_1a5

    :try_start_1a2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1f5

    .line 1503
    :cond_1a5
    :goto_1a5
    const/4 v7, 0x0

    move-object v6, v7

    move-object v5, v7

    .line 1504
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1505
    :try_start_1b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    .end local v6           #backupData:Landroid/os/ParcelFileDescriptor;
    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 1506
    monitor-exit v5
    :try_end_1bb
    .catchall {:try_start_1b0 .. :try_end_1bb} :catchall_1f7

    .line 1500
    throw v4

    .line 1540
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #backupData:Landroid/os/ParcelFileDescriptor;
    .restart local v13       #packInfo:Landroid/content/pm/PackageInfo;
    .restart local v15       #result:I
    .restart local v17       #size:I
    .restart local v18       #success:Z
    :cond_1bc
    const/16 v4, 0xb06

    :try_start_1be
    invoke-static {v4, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_1ea
    .catch Ljava/lang/Exception; {:try_start_1be .. :try_end_1c1} :catch_1c2

    goto :goto_18d

    .line 1542
    .end local v10           #backupDataName:Ljava/io/File;
    .end local v17           #size:I
    :catch_1c2
    move-exception v4

    move-object v11, v4

    .line 1543
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_1c4
    const-string v4, "PerformBackupThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport error backing up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1544
    const/16 v4, 0xb06

    invoke-static {v4, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_1e1
    .catchall {:try_start_1c4 .. :try_end_1e1} :catchall_1ea

    .line 1545
    const/4 v15, 0x1

    .line 1547
    if-eqz v6, :cond_192

    :try_start_1e4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1e7} :catch_1e8

    goto :goto_192

    .end local v11           #e:Ljava/lang/Exception;
    :catch_1e8
    move-exception v4

    goto :goto_192

    :catchall_1ea
    move-exception v4

    if-eqz v6, :cond_1f0

    :try_start_1ed
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f0
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_1f0} :catch_212

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :cond_1f0
    :goto_1f0
    throw v4

    .line 1500
    .end local v13           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v15           #result:I
    .end local v18           #success:Z
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #backupDataName:Ljava/io/File;
    :catch_1f1
    move-exception v5

    goto :goto_19b

    .line 1501
    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :catch_1f3
    move-exception v5

    goto :goto_1a0

    .line 1502
    :catch_1f5
    move-exception v5

    goto :goto_1a5

    .line 1506
    .end local v6           #backupData:Landroid/os/ParcelFileDescriptor;
    :catchall_1f7
    move-exception v4

    :try_start_1f8
    monitor-exit v5
    :try_end_1f9
    .catchall {:try_start_1f8 .. :try_end_1f9} :catchall_1f7

    throw v4

    .line 1500
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_1fa
    move-exception v5

    goto/16 :goto_ef

    .line 1501
    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :catch_1fd
    move-exception v5

    goto/16 :goto_f4

    .line 1502
    :catch_200
    move-exception v5

    goto/16 :goto_f9

    .line 1506
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    :catchall_203
    move-exception v4

    :try_start_204
    monitor-exit v8
    :try_end_205
    .catchall {:try_start_204 .. :try_end_205} :catchall_203

    throw v4

    .line 1500
    .restart local v8       #token:I
    .restart local v13       #packInfo:Landroid/content/pm/PackageInfo;
    .restart local v18       #success:Z
    :catch_206
    move-exception v4

    goto/16 :goto_12e

    .line 1501
    :catch_209
    move-exception v4

    goto/16 :goto_133

    .line 1502
    :catch_20c
    move-exception v4

    goto/16 :goto_138

    .line 1506
    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    .end local v8           #token:I
    :catchall_20f
    move-exception v5

    :try_start_210
    monitor-exit v4
    :try_end_211
    .catchall {:try_start_210 .. :try_end_211} :catchall_20f

    throw v5

    .line 1547
    .end local v10           #backupDataName:Ljava/io/File;
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v15       #result:I
    :catch_212
    move-exception v5

    goto :goto_1f0
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 1284
    const/4 v9, 0x0

    .line 1285
    .local v9, status:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1289
    .local v7, startRealtime:J
    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1292
    const/16 v10, 0xb05

    :try_start_c
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1295
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v11, "@pm@"

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1296
    .local v5, pmState:Ljava/io/File;
    if-nez v9, :cond_48

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_48

    .line 1297
    const-string v10, "PerformBackupThread"

    const-string v11, "Initializing (wiping) backup state and transport storage"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 1299
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v9

    .line 1300
    if-nez v9, :cond_105

    .line 1301
    const/16 v10, 0xb0b

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1313
    :cond_48
    :goto_48
    if-nez v9, :cond_7c

    .line 1314
    new-instance v3, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 1316
    .local v3, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    new-instance v4, Lcom/android/server/BackupManagerService$BackupRequest;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v11, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/4 v12, 0x0

    invoke-direct {v4, v10, v11, v12}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/pm/ApplicationInfo;Z)V

    .line 1317
    .local v4, pmRequest:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v10, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v11, "@pm@"

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1318
    invoke-virtual {v3}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v4, v10, v11}, Lcom/android/server/BackupManagerService$PerformBackupTask;->processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v9

    .line 1322
    .end local v3           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v4           #pmRequest:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_7c
    if-nez v9, :cond_84

    .line 1324
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v10}, Lcom/android/server/BackupManagerService$PerformBackupTask;->doQueuedBackups(Lcom/android/internal/backup/IBackupTransport;)I

    move-result v9

    .line 1327
    :cond_84
    if-nez v9, :cond_b0

    .line 1329
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v9

    .line 1330
    if-nez v9, :cond_15f

    .line 1331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-int v2, v10

    .line 1332
    .local v2, millis:I
    const/16 v10, 0xb09

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1339
    .end local v2           #millis:I
    :cond_b0
    :goto_b0
    const/4 v10, 0x2

    if-ne v9, v10, :cond_c5

    .line 1343
    const/16 v10, 0xb0a

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1344
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V
    :try_end_c5
    .catchall {:try_start_c .. :try_end_c5} :catchall_16f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c5} :catch_115

    .line 1353
    :cond_c5
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v10, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_e0

    if-nez v9, :cond_e0

    .line 1355
    :try_start_d1
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_db} :catch_272

    .line 1357
    :goto_db
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1364
    :cond_e0
    if-eqz v9, :cond_23d

    .line 1365
    const-string v10, "PerformBackupThread"

    const-string v11, "Backup pass unsuccessful, restaging"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_ef
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_232

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1367
    .local v6, req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v6, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_ef

    .line 1303
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_105
    const/16 v10, 0xb06

    :try_start_107
    const-string v11, "(initialize)"

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1304
    const-string v10, "PerformBackupThread"

    const-string v11, "Transport error in initializeDevice()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_107 .. :try_end_113} :catchall_16f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_113} :catch_115

    goto/16 :goto_48

    .line 1346
    .end local v5           #pmState:Ljava/io/File;
    :catch_115
    move-exception v10

    move-object v0, v10

    .line 1347
    .local v0, e:Ljava/lang/Exception;
    :try_start_117
    const-string v10, "PerformBackupThread"

    const-string v11, "Error in backup thread"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11e
    .catchall {:try_start_117 .. :try_end_11e} :catchall_16f

    .line 1348
    const/4 v9, 0x1

    .line 1353
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v10, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_13a

    if-nez v9, :cond_13a

    .line 1355
    :try_start_12b
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_135
    .catch Landroid/os/RemoteException; {:try_start_12b .. :try_end_135} :catch_277

    .line 1357
    :goto_135
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1364
    :cond_13a
    if-eqz v9, :cond_1fc

    .line 1365
    const-string v10, "PerformBackupThread"

    const-string v11, "Backup pass unsuccessful, restaging"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_149
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1367
    .restart local v6       #req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v6, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_149

    .line 1334
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    .restart local v5       #pmState:Ljava/io/File;
    :cond_15f
    const/16 v10, 0xb06

    :try_start_161
    const-string v11, "(finish)"

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1335
    const-string v10, "PerformBackupThread"

    const-string v11, "Transport error in finishBackup()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16d
    .catchall {:try_start_161 .. :try_end_16d} :catchall_16f
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_16d} :catch_115

    goto/16 :goto_b0

    .line 1353
    .end local v5           #pmState:Ljava/io/File;
    :catchall_16f
    move-exception v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v11, v11, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_18b

    if-nez v9, :cond_18b

    .line 1355
    :try_start_17c
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v12}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_186
    .catch Landroid/os/RemoteException; {:try_start_17c .. :try_end_186} :catch_27d

    .line 1357
    :goto_186
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1364
    :cond_18b
    if-eqz v9, :cond_1bb

    .line 1365
    const-string v11, "PerformBackupThread"

    const-string v12, "Backup pass unsuccessful, restaging"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_19a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 1367
    .restart local v6       #req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, v6, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_19a

    .line 1373
    .end local v6           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_1b0
    :try_start_1b0
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v12}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v12

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v11, v12, v13}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;J)V
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_1b0 .. :try_end_1bb} :catch_27a

    .line 1381
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1bb
    :goto_1bb
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v11, :cond_1e1

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_1e1

    .line 1382
    const-string v11, "PerformBackupThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to remove backup journal file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_1e1
    const/4 v11, 0x2

    if-ne v9, v11, :cond_1e9

    .line 1387
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/BackupManagerService;->backupNow()V

    .line 1390
    :cond_1e9
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1353
    throw v10

    .line 1373
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1f1
    :try_start_1f1
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v11

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v10, v11, v12}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;J)V
    :try_end_1fc
    .catch Landroid/os/RemoteException; {:try_start_1f1 .. :try_end_1fc} :catch_275

    .line 1381
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1fc
    :goto_1fc
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v10, :cond_222

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_222

    .line 1382
    const-string v10, "PerformBackupThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to remove backup journal file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_222
    const/4 v10, 0x2

    if-ne v9, v10, :cond_22a

    .line 1387
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->backupNow()V

    .line 1390
    :cond_22a
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .end local v0           #e:Ljava/lang/Exception;
    :goto_22e
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1392
    return-void

    .line 1373
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #pmState:Ljava/io/File;
    :cond_232
    :try_start_232
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v11

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v10, v11, v12}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;J)V
    :try_end_23d
    .catch Landroid/os/RemoteException; {:try_start_232 .. :try_end_23d} :catch_270

    .line 1381
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_23d
    :goto_23d
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v10, :cond_263

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_263

    .line 1382
    const-string v10, "PerformBackupThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to remove backup journal file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_263
    const/4 v10, 0x2

    if-ne v9, v10, :cond_26b

    .line 1387
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->backupNow()V

    .line 1390
    :cond_26b
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_22e

    .line 1374
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_270
    move-exception v10

    goto :goto_23d

    .line 1356
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_272
    move-exception v10

    goto/16 :goto_db

    .line 1374
    .end local v5           #pmState:Ljava/io/File;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_275
    move-exception v10

    goto :goto_1fc

    .line 1356
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_277
    move-exception v10

    goto/16 :goto_135

    .line 1374
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_27a
    move-exception v11

    goto/16 :goto_1bb

    .line 1356
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_27d
    move-exception v11

    goto/16 :goto_186
.end method
