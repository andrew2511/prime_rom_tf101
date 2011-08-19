.class Lcom/android/server/BackupManagerService$PerformRestoreTask;
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
    name = "PerformRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
    }
.end annotation


# instance fields
.field private mNeedFullBackup:Z

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmToken:I

.field private mStateDir:Ljava/io/File;

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V
    .registers 12
    .parameter
    .parameter "transport"
    .parameter "observer"
    .parameter "restoreSetToken"
    .parameter "targetPackage"
    .parameter "pmToken"
    .parameter "needFullBackup"

    .prologue
    .line 1623
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 1625
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    .line 1626
    iput-wide p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    .line 1627
    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    .line 1628
    iput p7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    .line 1629
    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    .line 1632
    :try_start_11
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_1f

    .line 1636
    :goto_1e
    return-void

    .line 1633
    :catch_1f
    move-exception v0

    goto :goto_1e
.end method


# virtual methods
.method processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    .registers 21
    .parameter "app"
    .parameter "appVersionCode"
    .parameter "agent"
    .parameter "needFullBackup"

    .prologue
    .line 1884
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v10, v0

    .line 1889
    .local v10, packageName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1890
    .local v7, backupDataName:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1891
    .local v9, newStateName:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    move-object v1, v0

    invoke-direct {v11, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1893
    .local v11, savedStateName:Ljava/io/File;
    const/4 v2, 0x0

    .line 1894
    .local v2, backupData:Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .line 1896
    .local v4, newState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 1899
    .local v5, token:I
    const/high16 v1, 0x3c00

    :try_start_5a
    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object v1, v0

    invoke-interface {v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    if-eqz v1, :cond_a6

    .line 1905
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting restore data for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    const/16 v1, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_89
    .catchall {:try_start_5a .. :try_end_89} :catchall_169
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_89} :catch_e1

    .line 1956
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1957
    if-eqz v2, :cond_91

    :try_start_8e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_191

    .line 1958
    :cond_91
    :goto_91
    if-eqz v4, :cond_94

    :try_start_93
    throw v4
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_94} :catch_194

    .line 1959
    :cond_94
    :goto_94
    const/4 v4, 0x0

    move-object v2, v4

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1966
    if-eqz p4, :cond_a5

    .line 1967
    :goto_a2
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1970
    :cond_a5
    return-void

    .line 1911
    :cond_a6
    :try_start_a6
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1912
    const/high16 v1, 0x1000

    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1915
    const/high16 v1, 0x3c00

    invoke-static {v9, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    const-wide/32 v14, 0xea60

    invoke-virtual {v1, v5, v14, v15}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJ)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v6, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v1, p3

    move/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v13

    .line 1925
    .local v13, success:Z
    if-nez v13, :cond_132

    .line 1926
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "restore timeout"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e1
    .catchall {:try_start_a6 .. :try_end_e1} :catchall_169
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_e1} :catch_e1

    .line 1947
    .end local v13           #success:Z
    :catch_e1
    move-exception v1

    move-object v8, v1

    .line 1948
    .local v8, e:Ljava/lang/Exception;
    :try_start_e3
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error restoring data for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1949
    const/16 v1, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Ljava/lang/Exception;
    aput-object v8, v3, v6

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    invoke-virtual {v1, v10}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_e3 .. :try_end_115} :catchall_169

    .line 1956
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1957
    if-eqz v2, :cond_11d

    :try_start_11a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_18d

    .line 1958
    :cond_11d
    :goto_11d
    if-eqz v4, :cond_122

    :try_start_11f
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_18f

    .line 1959
    :cond_122
    :goto_122
    const/4 v4, 0x0

    move-object v2, v4

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1966
    if-eqz p4, :cond_a5

    goto/16 :goto_a2

    .line 1942
    .restart local v13       #success:Z
    :cond_132
    :try_start_132
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1945
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v12, v14

    .line 1946
    .local v12, size:I
    const/16 v1, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    const/4 v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_14c
    .catchall {:try_start_132 .. :try_end_14c} :catchall_169
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_14c} :catch_e1

    .line 1956
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1957
    if-eqz v2, :cond_154

    :try_start_151
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_154} :catch_197

    .line 1958
    :cond_154
    :goto_154
    if-eqz v4, :cond_159

    :try_start_156
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_199

    .line 1959
    :cond_159
    :goto_159
    const/4 v4, 0x0

    move-object v2, v4

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1966
    if-eqz p4, :cond_a5

    goto/16 :goto_a2

    .line 1956
    .end local v12           #size:I
    .end local v13           #success:Z
    :catchall_169
    move-exception v1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1957
    if-eqz v2, :cond_172

    :try_start_16f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_172} :catch_189

    .line 1958
    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    :cond_172
    :goto_172
    if-eqz v4, :cond_177

    :try_start_174
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_174 .. :try_end_177} :catch_18b

    .line 1959
    :cond_177
    :goto_177
    const/4 v4, 0x0

    move-object v2, v4

    .line 1960
    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v2, v0

    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1966
    if-eqz p4, :cond_188

    .line 1967
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 1956
    :cond_188
    throw v1

    .line 1957
    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_189
    move-exception v2

    goto :goto_172

    .line 1958
    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_18b
    move-exception v2

    goto :goto_177

    .line 1957
    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_18d
    move-exception v1

    goto :goto_11d

    .line 1958
    :catch_18f
    move-exception v1

    goto :goto_122

    .line 1957
    :catch_191
    move-exception v1

    goto/16 :goto_91

    .line 1958
    :catch_194
    move-exception v1

    goto/16 :goto_94

    .line 1957
    .restart local v12       #size:I
    .restart local v13       #success:Z
    :catch_197
    move-exception v1

    goto :goto_154

    .line 1958
    :catch_199
    move-exception v1

    goto :goto_159
.end method

.method public run()V
    .registers 28

    .prologue
    .line 1639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 1644
    .local v20, startRealtime:J
    const/16 v17, 0x0

    .line 1645
    .local v17, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/4 v9, -0x1

    .line 1650
    .local v9, error:I
    const/16 v22, 0xb0e

    const/16 v23, 0x2

    :try_start_b
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1654
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v19, restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v14, Landroid/content/pm/PackageInfo;

    invoke-direct {v14}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 1656
    .local v14, omPackage:Landroid/content/pm/PackageInfo;
    const-string v22, "@pm@"

    move-object/from16 v0, v22

    move-object v1, v14

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1657
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v6

    .line 1660
    .local v6, agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_14c

    .line 1661
    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1668
    :goto_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0
    :try_end_65
    .catchall {:try_start_b .. :try_end_65} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_65} :catch_15b

    if-eqz v22, :cond_74

    .line 1672
    :try_start_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_220
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_74} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_74} :catch_15b

    .line 1679
    :cond_74
    :goto_74
    :try_start_74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/pm/PackageInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v22

    if-eqz v22, :cond_2c5

    .line 1681
    const-string v22, "BackupManagerService"

    const-string v23, "Error starting restore operation"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_b1
    .catchall {:try_start_74 .. :try_end_b1} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b1} :catch_15b

    .line 1839
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_ba} :catch_a91

    .line 1844
    :goto_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ce

    .line 1846
    :try_start_c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_ce} :catch_aa2

    .line 1855
    :cond_ce
    :goto_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_fa

    if-eqz v17, :cond_fa

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    .line 1857
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    .line 1858
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    .line 1863
    :cond_fa
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_117

    .line 1866
    :try_start_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_117
    .catch Landroid/os/RemoteException; {:try_start_102 .. :try_end_117} :catch_b6e

    .line 1871
    :cond_117
    :goto_117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_148
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1878
    :goto_14b
    return-void

    .line 1664
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_14c
    :try_start_14c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_159
    .catchall {:try_start_14c .. :try_end_159} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_159} :catch_15b

    goto/16 :goto_5f

    .line 1833
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_15b
    move-exception v22

    move-object/from16 v8, v22

    .line 1834
    .local v8, e:Ljava/lang/Exception;
    :goto_15e
    :try_start_15e
    const-string v22, "BackupManagerService"

    const-string v23, "Error in restore thread"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16a
    .catchall {:try_start_15e .. :try_end_16a} :catchall_220

    .line 1839
    :try_start_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_16a .. :try_end_173} :catch_a74

    .line 1844
    .end local v8           #e:Ljava/lang/Exception;
    :goto_173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_187

    .line 1846
    :try_start_17b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_187
    .catch Landroid/os/RemoteException; {:try_start_17b .. :try_end_187} :catch_a85

    .line 1855
    :cond_187
    :goto_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_1bc

    if-eqz v17, :cond_1bc

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1863
    :cond_1bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_1d9

    .line 1866
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_1d9
    .catch Landroid/os/RemoteException; {:try_start_1c4 .. :try_end_1d9} :catch_b71

    .line 1871
    :cond_1d9
    :goto_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_148

    .line 1673
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_20c
    move-exception v22

    move-object/from16 v8, v22

    .line 1674
    .local v8, e:Landroid/os/RemoteException;
    :try_start_20f
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreStarting"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_21e
    .catchall {:try_start_20f .. :try_end_21e} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_21e} :catch_15b

    goto/16 :goto_74

    .line 1836
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_220
    move-exception v22

    .line 1839
    :goto_221
    :try_start_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_22a
    .catch Landroid/os/RemoteException; {:try_start_221 .. :try_end_22a} :catch_a57

    .line 1844
    :goto_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23e

    .line 1846
    :try_start_232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_23e
    .catch Landroid/os/RemoteException; {:try_start_232 .. :try_end_23e} :catch_a68

    .line 1855
    :cond_23e
    :goto_23e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_273

    if-eqz v17, :cond_273

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1863
    :cond_273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    if-lez v23, :cond_290

    .line 1866
    :try_start_27b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_290
    .catch Landroid/os/RemoteException; {:try_start_27b .. :try_end_290} :catch_b74

    .line 1871
    :cond_290
    :goto_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    const-wide/32 v25, 0xea60

    invoke-virtual/range {v23 .. v26}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1836
    throw v22

    .line 1686
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_2c5
    :try_start_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v16

    .line 1687
    .local v16, packageName:Ljava/lang/String;
    if-nez v16, :cond_37e

    .line 1688
    const-string v22, "BackupManagerService"

    const-string v23, "Error getting first restore package"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2e5
    .catchall {:try_start_2c5 .. :try_end_2e5} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_2c5 .. :try_end_2e5} :catch_15b

    .line 1839
    :try_start_2e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_2ee
    .catch Landroid/os/RemoteException; {:try_start_2e5 .. :try_end_2ee} :catch_aae

    .line 1844
    :goto_2ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_302

    .line 1846
    :try_start_2f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_302
    .catch Landroid/os/RemoteException; {:try_start_2f6 .. :try_end_302} :catch_abf

    .line 1855
    :cond_302
    :goto_302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_32e

    if-eqz v17, :cond_32e

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    .line 1857
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    .line 1858
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    .line 1863
    :cond_32e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_34b

    .line 1866
    :try_start_336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_34b
    .catch Landroid/os/RemoteException; {:try_start_336 .. :try_end_34b} :catch_b6b

    .line 1871
    :cond_34b
    :goto_34b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_148

    .line 1691
    :cond_37e
    :try_start_37e
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_453

    .line 1692
    const-string v22, "BackupManagerService"

    const-string v23, "No restore data available"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v13, v0

    .line 1694
    .local v13, millis:I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_3ba
    .catchall {:try_start_37e .. :try_end_3ba} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_37e .. :try_end_3ba} :catch_15b

    .line 1839
    :try_start_3ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_3c3
    .catch Landroid/os/RemoteException; {:try_start_3ba .. :try_end_3c3} :catch_acb

    .line 1844
    :goto_3c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3d7

    .line 1846
    :try_start_3cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_3d7
    .catch Landroid/os/RemoteException; {:try_start_3cb .. :try_end_3d7} :catch_adc

    .line 1855
    :cond_3d7
    :goto_3d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_403

    if-eqz v17, :cond_403

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    .line 1857
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    .line 1858
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    .line 1863
    :cond_403
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_420

    .line 1866
    :try_start_40b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_420
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_420} :catch_b68

    .line 1871
    :cond_420
    :goto_420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_148

    .line 1696
    .end local v13           #millis:I
    :cond_453
    :try_start_453
    const-string v22, "@pm@"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_533

    .line 1697
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "@pm@"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package manager data missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_49a
    .catchall {:try_start_453 .. :try_end_49a} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_453 .. :try_end_49a} :catch_15b

    .line 1839
    :try_start_49a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_4a3
    .catch Landroid/os/RemoteException; {:try_start_49a .. :try_end_4a3} :catch_ae8

    .line 1844
    :goto_4a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4b7

    .line 1846
    :try_start_4ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_4b7
    .catch Landroid/os/RemoteException; {:try_start_4ab .. :try_end_4b7} :catch_af9

    .line 1855
    :cond_4b7
    :goto_4b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_4e3

    if-eqz v17, :cond_4e3

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    .line 1857
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    .line 1858
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    .line 1863
    :cond_4e3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_500

    .line 1866
    :try_start_4eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_500
    .catch Landroid/os/RemoteException; {:try_start_4eb .. :try_end_500} :catch_b65

    .line 1871
    :cond_500
    :goto_500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_148

    .line 1705
    :cond_533
    :try_start_533
    new-instance v18, Lcom/android/server/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    :try_end_547
    .catchall {:try_start_533 .. :try_end_547} :catchall_220
    .catch Ljava/lang/Exception; {:try_start_533 .. :try_end_547} :catch_15b

    .line 1707
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .local v18, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/16 v22, 0x0

    :try_start_549
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    .line 1713
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v22

    if-nez v22, :cond_630

    .line 1714
    const-string v22, "BackupManagerService"

    const-string v23, "No restore metadata available, so not restoring settings"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "@pm@"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package manager restore metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_589
    .catchall {:try_start_549 .. :try_end_589} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_549 .. :try_end_589} :catch_828

    .line 1839
    :try_start_589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_592
    .catch Landroid/os/RemoteException; {:try_start_589 .. :try_end_592} :catch_b05

    .line 1844
    :goto_592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5a6

    .line 1846
    :try_start_59a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_5a6
    .catch Landroid/os/RemoteException; {:try_start_59a .. :try_end_5a6} :catch_b16

    .line 1855
    :cond_5a6
    :goto_5a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_5db

    if-eqz v18, :cond_5db

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1863
    :cond_5db
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_5f8

    .line 1866
    :try_start_5e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_5f8
    .catch Landroid/os/RemoteException; {:try_start_5e3 .. :try_end_5f8} :catch_b62

    .line 1871
    :cond_5f8
    :goto_5f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .line 1717
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_14b

    .line 1720
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_630
    const/4 v7, 0x0

    .line 1722
    .local v7, count:I
    :cond_631
    :goto_631
    :try_start_631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v16

    .line 1724
    if-nez v16, :cond_6f8

    .line 1725
    const-string v22, "BackupManagerService"

    const-string v23, "Error getting next restore package"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_651
    .catchall {:try_start_631 .. :try_end_651} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_631 .. :try_end_651} :catch_828

    .line 1839
    :try_start_651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_65a
    .catch Landroid/os/RemoteException; {:try_start_651 .. :try_end_65a} :catch_b22

    .line 1844
    :goto_65a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_66e

    .line 1846
    :try_start_662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_66e
    .catch Landroid/os/RemoteException; {:try_start_662 .. :try_end_66e} :catch_b33

    .line 1855
    :cond_66e
    :goto_66e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_6a3

    if-eqz v18, :cond_6a3

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1863
    :cond_6a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_6c0

    .line 1866
    :try_start_6ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_6c0
    .catch Landroid/os/RemoteException; {:try_start_6ab .. :try_end_6c0} :catch_b5f

    .line 1871
    :cond_6c0
    :goto_6c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .line 1727
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_14b

    .line 1728
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_6f8
    :try_start_6f8
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7d3

    .line 1830
    const/4 v9, 0x0

    .line 1831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v13, v0

    .line 1832
    .restart local v13       #millis:I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_72c
    .catchall {:try_start_6f8 .. :try_end_72c} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_6f8 .. :try_end_72c} :catch_828

    .line 1839
    :try_start_72c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_735
    .catch Landroid/os/RemoteException; {:try_start_72c .. :try_end_735} :catch_b3f

    .line 1844
    :goto_735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_749

    .line 1846
    :try_start_73d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_749
    .catch Landroid/os/RemoteException; {:try_start_73d .. :try_end_749} :catch_b50

    .line 1855
    :cond_749
    :goto_749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_77e

    if-eqz v18, :cond_77e

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    .line 1858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    .line 1863
    :cond_77e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_79b

    .line 1866
    :try_start_786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_79b
    .catch Landroid/os/RemoteException; {:try_start_786 .. :try_end_79b} :catch_b5c

    .line 1871
    :cond_79b
    :goto_79b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 1872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    const-wide/32 v24, 0xea60

    invoke-virtual/range {v22 .. v25}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .line 1877
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_14b

    .line 1733
    .end local v13           #millis:I
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_7d3
    :try_start_7d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0
    :try_end_7d9
    .catchall {:try_start_7d3 .. :try_end_7d9} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_7d3 .. :try_end_7d9} :catch_828

    if-eqz v22, :cond_7e9

    .line 1735
    :try_start_7db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v7

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_7e9
    .catchall {:try_start_7db .. :try_end_7e9} :catchall_842
    .catch Landroid/os/RemoteException; {:try_start_7db .. :try_end_7e9} :catch_82f
    .catch Ljava/lang/Exception; {:try_start_7db .. :try_end_7e9} :catch_828

    .line 1742
    :cond_7e9
    :goto_7e9
    :try_start_7e9
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v12

    .line 1743
    .local v12, metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    if-nez v12, :cond_847

    .line 1744
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Missing metadata for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_631

    .line 1833
    .end local v7           #count:I
    .end local v12           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :catch_828
    move-exception v22

    move-object/from16 v8, v22

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_15e

    .line 1736
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v7       #count:I
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_82f
    move-exception v22

    move-object/from16 v8, v22

    .line 1737
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died in onUpdate"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_841
    .catchall {:try_start_7e9 .. :try_end_841} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_7e9 .. :try_end_841} :catch_828

    goto :goto_7e9

    .line 1836
    .end local v7           #count:I
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_842
    move-exception v22

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_221

    .line 1752
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v7       #count:I
    .restart local v12       #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_847
    const/16 v10, 0x40

    .line 1753
    .local v10, flags:I
    :try_start_849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_85b
    .catchall {:try_start_849 .. :try_end_85b} :catchall_842
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_849 .. :try_end_85b} :catch_8e4
    .catch Ljava/lang/Exception; {:try_start_849 .. :try_end_85b} :catch_828

    move-result-object v15

    .line 1761
    .local v15, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_85c
    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_90c

    .line 1765
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x2

    and-int v22, v22, v23

    if-nez v22, :cond_90c

    .line 1767
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > installed version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1769
    .local v11, message:Ljava/lang/String;
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_631

    .line 1754
    .end local v11           #message:Ljava/lang/String;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_8e4
    move-exception v22

    move-object/from16 v8, v22

    .line 1755
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "BackupManagerService"

    const-string v23, "Invalid package restoring data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1756
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_631

    .line 1780
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_90c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v15

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v22

    if-nez v22, :cond_957

    .line 1781
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Signature mismatch restoring "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Signature mismatch"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_631

    .line 1793
    :cond_957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    .line 1796
    .local v5, agent:Landroid/app/IBackupAgent;
    if-nez v5, :cond_99f

    .line 1797
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t find backup agent for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Restore agent missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_99d
    .catchall {:try_start_85c .. :try_end_99d} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_85c .. :try_end_99d} :catch_828

    goto/16 :goto_631

    .line 1805
    :cond_99f
    :try_start_99f
    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v22

    move-object v3, v5

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    :try_end_9b5
    .catchall {:try_start_99f .. :try_end_9b5} :catchall_a07

    .line 1807
    add-int/lit8 v7, v7, 0x1

    .line 1810
    :try_start_9b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_631

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x1

    and-int v22, v22, v23

    if-eqz v22, :cond_631

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    goto/16 :goto_631

    .line 1810
    :catchall_a07
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v23

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_a56

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    const/high16 v24, 0x1

    and-int v23, v23, v24

    if-eqz v23, :cond_a56

    .line 1822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v23

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1810
    :cond_a56
    throw v22
    :try_end_a57
    .catchall {:try_start_9b7 .. :try_end_a57} :catchall_842
    .catch Ljava/lang/Exception; {:try_start_9b7 .. :try_end_a57} :catch_828

    .line 1840
    .end local v5           #agent:Landroid/app/IBackupAgent;
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7           #count:I
    .end local v10           #flags:I
    .end local v12           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_a57
    move-exception v23

    move-object/from16 v8, v23

    .line 1841
    .local v8, e:Landroid/os/RemoteException;
    const-string v23, "BackupManagerService"

    const-string v24, "Error finishing restore"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22a

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_a68
    move-exception v23

    move-object/from16 v8, v23

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v23, "BackupManagerService"

    const-string v24, "Restore observer died at restoreFinished"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23e

    .line 1840
    .local v8, e:Ljava/lang/Exception;
    :catch_a74
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .local v8, e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_173

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_a85
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_a91
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ba

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_aa2
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ce

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v16       #packageName:Ljava/lang/String;
    :catch_aae
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2ee

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_abf
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_302

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #millis:I
    :catch_acb
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c3

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_adc
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3d7

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v13           #millis:I
    :catch_ae8
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a3

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_af9
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b7

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_b05
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_592

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_b16
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a6

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #count:I
    :catch_b22
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_65a

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_b33
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_66e

    .line 1840
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #millis:I
    :catch_b3f
    move-exception v22

    move-object/from16 v8, v22

    .line 1841
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_735

    .line 1847
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_b50
    move-exception v22

    move-object/from16 v8, v22

    .line 1848
    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_749

    .line 1867
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_b5c
    move-exception v22

    goto/16 :goto_79b

    .end local v13           #millis:I
    :catch_b5f
    move-exception v22

    goto/16 :goto_6c0

    .end local v7           #count:I
    :catch_b62
    move-exception v22

    goto/16 :goto_5f8

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_b65
    move-exception v22

    goto/16 :goto_500

    .restart local v13       #millis:I
    :catch_b68
    move-exception v22

    goto/16 :goto_420

    .end local v13           #millis:I
    :catch_b6b
    move-exception v22

    goto/16 :goto_34b

    .end local v16           #packageName:Ljava/lang/String;
    :catch_b6e
    move-exception v22

    goto/16 :goto_117

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_b71
    move-exception v22

    goto/16 :goto_1d9

    :catch_b74
    move-exception v23

    goto/16 :goto_290
.end method
