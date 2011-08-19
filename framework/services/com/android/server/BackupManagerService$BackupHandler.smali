.class Lcom/android/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    .line 271
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 272
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28
    .parameter "msg"

    .prologue
    .line 276
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_30c

    .line 420
    :goto_8
    :pswitch_8
    return-void

    .line 279
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-wide v6, v6, Lcom/android/server/BackupManagerService;->mLastBackupPass:J

    const-wide/32 v8, 0x36ee80

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/server/BackupManagerService;->mNextBackupPass:J

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentTransport:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v5, v6}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v25

    .line 283
    .local v25, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v25, :cond_4a

    .line 284
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_8

    .line 290
    :cond_4a
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v19, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    move-object/from16 v17, v0

    .line 292
    .local v17, oldJournal:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 296
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_a5

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_7d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/BackupManagerService$BackupRequest;

    .line 298
    .local v14, b:Lcom/android/server/BackupManagerService$BackupRequest;
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 307
    .end local v14           #b:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v16           #i$:Ljava/util/Iterator;
    :catchall_90
    move-exception v6

    monitor-exit v5
    :try_end_92
    .catchall {:try_start_61 .. :try_end_92} :catchall_90

    throw v6

    .line 301
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_93
    :try_start_93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/BackupManagerService;->mJournal:Ljava/io/File;

    .line 307
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_a5
    monitor-exit v5
    :try_end_a6
    .catchall {:try_start_93 .. :try_end_a6} :catchall_90

    .line 309
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_c3

    .line 315
    new-instance v5, Lcom/android/server/BackupManagerService$PerformBackupTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    move-object/from16 v3, v19

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformBackupTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformBackupTask;->run()V

    goto/16 :goto_8

    .line 317
    :cond_c3
    const-string v5, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 328
    .end local v17           #oldJournal:Ljava/io/File;
    .end local v19           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    .end local v25           #transport:Lcom/android/internal/backup/IBackupTransport;
    :pswitch_d6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/BackupManagerService$RestoreParams;

    .line 329
    .local v18, params:Lcom/android/server/BackupManagerService$RestoreParams;
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_RUN_RESTORE observer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v5, Lcom/android/server/BackupManagerService$PerformRestoreTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v7, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v8, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->token:J

    move-wide v9, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pkgInfo:Landroid/content/pm/PackageInfo;

    move-object v11, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->pmToken:I

    move v12, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$RestoreParams;->needFullBackup:Z

    move v13, v0

    invoke-direct/range {v5 .. v13}, Lcom/android/server/BackupManagerService$PerformRestoreTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->run()V

    goto/16 :goto_8

    .line 338
    .end local v18           #params:Lcom/android/server/BackupManagerService$RestoreParams;
    :pswitch_128
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/BackupManagerService$ClearParams;

    .line 339
    .local v18, params:Lcom/android/server/BackupManagerService$ClearParams;
    new-instance v5, Lcom/android/server/BackupManagerService$PerformClearTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ClearParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v7, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    move-object v8, v0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/BackupManagerService$PerformClearTask;-><init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformClearTask;->run()V

    goto/16 :goto_8

    .line 348
    .end local v18           #params:Lcom/android/server/BackupManagerService$ClearParams;
    :pswitch_149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    .line 349
    :try_start_151
    new-instance v20, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v20, queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mPendingInits:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 351
    monitor-exit v5
    :try_end_16b
    .catchall {:try_start_151 .. :try_end_16b} :catchall_17e

    .line 353
    new-instance v5, Lcom/android/server/BackupManagerService$PerformInitializeTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/BackupManagerService$PerformInitializeTask;-><init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V

    invoke-virtual {v5}, Lcom/android/server/BackupManagerService$PerformInitializeTask;->run()V

    goto/16 :goto_8

    .line 351
    .end local v20           #queue:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_17e
    move-exception v6

    :try_start_17f
    monitor-exit v5
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v6

    .line 360
    :pswitch_181
    const/16 v22, 0x0

    .line 361
    .local v22, sets:[Landroid/app/backup/RestoreSet;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;

    .line 363
    .local v18, params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    :try_start_18b
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->transport:Lcom/android/internal/backup/IBackupTransport;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v22

    .line 365
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object v5, v0

    monitor-enter v5
    :try_end_19a
    .catchall {:try_start_18b .. :try_end_19a} :catchall_249
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_19a} :catch_1e4

    .line 366
    :try_start_19a
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->session:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v6

    iput-object v0, v1, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 367
    monitor-exit v5
    :try_end_1a5
    .catchall {:try_start_19a .. :try_end_1a5} :catchall_1e1

    .line 368
    if-nez v22, :cond_1af

    const/16 v5, 0xb0f

    const/4 v6, 0x0

    :try_start_1aa
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1af
    .catchall {:try_start_1aa .. :try_end_1af} :catchall_249
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1af} :catch_1e4

    .line 372
    :cond_1af
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    if-eqz v5, :cond_1c1

    .line 374
    :try_start_1b6
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_1b6 .. :try_end_1c1} :catch_21f
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c1} :catch_22a

    .line 383
    :cond_1c1
    :goto_1c1
    const/16 v5, 0x8

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 384
    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 367
    :catchall_1e1
    move-exception v6

    :try_start_1e2
    monitor-exit v5
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e1

    :try_start_1e3
    throw v6
    :try_end_1e4
    .catchall {:try_start_1e3 .. :try_end_1e4} :catchall_249
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1e4} :catch_1e4

    .line 369
    :catch_1e4
    move-exception v5

    move-object v15, v5

    .line 370
    .local v15, e:Ljava/lang/Exception;
    :try_start_1e6
    const-string v5, "BackupManagerService"

    const-string v6, "Error from transport getting set list"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ed
    .catchall {:try_start_1e6 .. :try_end_1ed} :catchall_249

    .line 372
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    if-eqz v5, :cond_1ff

    .line 374
    :try_start_1f4
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_1ff
    .catch Landroid/os/RemoteException; {:try_start_1f4 .. :try_end_1ff} :catch_234
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1ff} :catch_23f

    .line 383
    :cond_1ff
    :goto_1ff
    const/16 v5, 0x8

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 384
    const/16 v5, 0x8

    const-wide/32 v6, 0xea60

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_8

    .line 375
    .end local v15           #e:Ljava/lang/Exception;
    :catch_21f
    move-exception v5

    move-object/from16 v21, v5

    .line 376
    .local v21, re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c1

    .line 377
    .end local v21           #re:Landroid/os/RemoteException;
    :catch_22a
    move-exception v5

    move-object v15, v5

    .line 378
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    invoke-static {v5, v6, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c1

    .line 375
    :catch_234
    move-exception v5

    move-object/from16 v21, v5

    .line 376
    .restart local v21       #re:Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ff

    .line 377
    .end local v21           #re:Landroid/os/RemoteException;
    :catch_23f
    move-exception v5

    move-object v15, v5

    .line 378
    const-string v5, "BackupManagerService"

    const-string v6, "Restore observer threw"

    invoke-static {v5, v6, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1ff

    .line 372
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_249
    move-exception v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v6, v0

    if-eqz v6, :cond_25c

    .line 374
    :try_start_251
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/BackupManagerService$RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_25c
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_25c} :catch_27b
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_25c} :catch_286

    .line 383
    :cond_25c
    :goto_25c
    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 384
    const/16 v6, 0x8

    const-wide/32 v7, 0xea60

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v5

    .line 375
    :catch_27b
    move-exception v6

    move-object/from16 v21, v6

    .line 376
    .restart local v21       #re:Landroid/os/RemoteException;
    const-string v6, "BackupManagerService"

    const-string v7, "Unable to report listing to observer"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25c

    .line 377
    .end local v21           #re:Landroid/os/RemoteException;
    :catch_286
    move-exception v6

    move-object v15, v6

    .line 378
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v6, "BackupManagerService"

    const-string v7, "Restore observer threw"

    invoke-static {v6, v7, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25c

    .line 393
    .end local v15           #e:Ljava/lang/Exception;
    .end local v18           #params:Lcom/android/server/BackupManagerService$RestoreGetSetsParams;
    .end local v22           #sets:[Landroid/app/backup/RestoreSet;
    :pswitch_290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    .line 394
    :try_start_298
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    .line 395
    .local v24, token:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v23

    .line 396
    .local v23, state:I
    if-nez v23, :cond_2bf

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    const/4 v7, -0x1

    move-object v0, v6

    move/from16 v1, v24

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 400
    :cond_2bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v5

    goto/16 :goto_8

    .end local v23           #state:I
    .end local v24           #token:I
    :catchall_2cc
    move-exception v6

    monitor-exit v5
    :try_end_2ce
    .catchall {:try_start_298 .. :try_end_2ce} :catchall_2cc

    throw v6

    .line 407
    :pswitch_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 408
    :try_start_2d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v6, :cond_306

    .line 413
    const-string v6, "BackupManagerService"

    const-string v7, "Restore session timed out; aborting"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v6, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupHandler;->this$0:Lcom/android/server/BackupManagerService;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/BackupManagerService$ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/BackupManagerService$ActiveRestoreSession;Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$ActiveRestoreSession;)V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_306
    monitor-exit v5

    goto/16 :goto_8

    :catchall_309
    move-exception v6

    monitor-exit v5
    :try_end_30b
    .catchall {:try_start_2d5 .. :try_end_30b} :catchall_309

    throw v6

    .line 276
    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_d6
        :pswitch_128
        :pswitch_149
        :pswitch_181
        :pswitch_290
        :pswitch_2cf
    .end packed-switch
.end method
