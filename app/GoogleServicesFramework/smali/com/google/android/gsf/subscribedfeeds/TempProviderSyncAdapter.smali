.class public abstract Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "TempProviderSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    }
.end annotation


# instance fields
.field private volatile mAdapterSyncStarted:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mIsCanceled:Z

.field private final mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

.field private volatile mProviderSyncStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 1
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 42
    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 43
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private runSyncLoop(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 31
    .parameter "account"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    .line 255
    new-instance v24, Landroid/util/TimingLogger;

    const-string v5, "SyncProfiling"

    const-string v6, "sync"

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v24, syncTimer:Landroid/util/TimingLogger;
    const-string v5, "start"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 257
    const/4 v13, 0x0

    .line 258
    .local v13, loopCount:I
    const/16 v25, 0x0

    .line 260
    .local v25, tooManyGetServerDiffsAttempts:Z
    const-string v5, "deletions_override"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 263
    .local v19, overrideTooManyDeletions:Z
    const-string v5, "discard_deletions"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 265
    .local v12, discardLocalDeletions:Z
    const-string v5, "upload"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 267
    .local v26, uploadOnly:Z
    const/4 v7, 0x0

    .line 268
    .local v7, serverDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    new-instance v23, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;-><init>()V

    .line 270
    .local v23, result:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;
    if-nez v26, :cond_0

    move v14, v13

    .line 279
    .end local v13           #loopCount:I
    .local v14, loopCount:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    move v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v5, :cond_30

    .line 281
    add-int/lit8 v13, v14, 0x1

    .end local v14           #loopCount:I
    .restart local v13       #loopCount:I
    const/16 v5, 0x14

    if-ne v14, v5, :cond_7

    .line 282
    :try_start_1
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: Hit max loop count while getting server diffs "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v25, 0x1

    .line 373
    :cond_0
    :goto_1
    const/4 v13, 0x0

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->isReadOnly()Z

    move-result v22

    .line 375
    .local v22, readOnly:Z
    const-wide/16 v20, 0x0

    .line 376
    .local v20, previousNumModifications:J
    if-eqz v7, :cond_1

    .line 377
    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 378
    const/4 v7, 0x0

    .line 384
    :cond_1
    if-eqz v12, :cond_2

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v7

    .line 386
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 387
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 390
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    move v5, v0

    if-nez v5, :cond_23

    .line 394
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 395
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 396
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 398
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v22, :cond_20

    const/4 v6, 0x0

    :goto_3
    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    move v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_21

    .line 473
    if-eqz v12, :cond_4

    .line 474
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 476
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_5
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 478
    :cond_6
    const-string v5, "stop"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 481
    .end local v20           #previousNumModifications:J
    .end local v22           #readOnly:Z
    :goto_4
    return-void

    .line 293
    :cond_7
    if-eqz v7, :cond_8

    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 294
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v7

    .line 297
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v9

    .line 299
    .local v9, syncInfo:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    move-result-object v6

    .line 302
    .local v6, syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    if-nez v6, :cond_9

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->wipeAccount(Landroid/accounts/Account;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    move-result-object v6

    .line 306
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 307
    const-string v5, "Sync"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 308
    const-string v5, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runSyncLoop: running getServerDiffs using syncData "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move-object/from16 v5, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 311
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    move v5, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_e

    .line 473
    if-eqz v12, :cond_b

    .line 474
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 476
    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 478
    :cond_d
    const-string v5, "stop"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 315
    :cond_e
    :try_start_3
    const-string v5, "Sync"

    const/4 v8, 0x2

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 316
    const-string v5, "Sync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runSyncLoop: result: "

    .end local v9           #syncInfo:Ljava/lang/Object;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->hasError()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    if-eqz v5, :cond_13

    .line 473
    if-eqz v12, :cond_10

    .line 474
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 476
    :cond_10
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_11
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_12

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 478
    :cond_12
    const-string v5, "stop"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 319
    :cond_13
    :try_start_4
    move-object/from16 v0, p3

    iget-boolean v0, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    move v5, v0

    if-eqz v5, :cond_14

    .line 321
    const-string v5, "Sync"

    const-string v6, "partialSyncUnavailable is set, setting ignoreSyncData and retrying"

    .end local v6           #syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->wipeAccount(Landroid/accounts/Account;)V

    move v14, v13

    .line 325
    .end local v13           #loopCount:I
    .restart local v14       #loopCount:I
    goto/16 :goto_0

    .line 329
    .end local v14           #loopCount:I
    .restart local v6       #syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .restart local v13       #loopCount:I
    :cond_14
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 332
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v6           #syncData:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    move-result v5

    if-eqz v5, :cond_15

    .line 333
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: running merge"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    move v5, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_19

    .line 473
    if-eqz v12, :cond_16

    .line 474
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 476
    :cond_16
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_17
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_18

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 478
    :cond_18
    const-string v5, "stop"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 337
    :cond_19
    :try_start_5
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 338
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1a
    move-object/from16 v0, p3

    iget-boolean v0, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    move v5, v0

    if-nez v5, :cond_1e

    .line 343
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 344
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: fetched all data, moving on"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 473
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v12, :cond_1b

    .line 474
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 476
    :cond_1b
    if-eqz v7, :cond_1c

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_1c
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v6, v0

    if-eqz v6, :cond_1d

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 478
    :cond_1d
    const-string v6, "stop"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v5

    .line 348
    :cond_1e
    :try_start_6
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 349
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: more data to fetch, looping"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move v14, v13

    .line 351
    .end local v13           #loopCount:I
    .restart local v14       #loopCount:I
    goto/16 :goto_0

    .end local v14           #loopCount:I
    .restart local v13       #loopCount:I
    .restart local v20       #previousNumModifications:J
    .restart local v22       #readOnly:Z
    :cond_20
    move-object/from16 v6, v23

    .line 399
    goto/16 :goto_3

    .line 401
    :cond_21
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 402
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_22
    if-eqz v22, :cond_28

    const/4 v5, 0x0

    move-object v11, v5

    .line 407
    .local v11, clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    :goto_6
    if-nez v11, :cond_29

    .line 467
    .end local v11           #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    :cond_23
    :goto_7
    move-object/from16 v0, p3

    iget-boolean v0, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    move v5, v0

    or-int v5, v5, v25

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->tooManyRetries:Z

    .line 468
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 469
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: final result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 473
    :cond_24
    if-eqz v12, :cond_25

    .line 474
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->fullSyncRequested:Z

    .line 476
    :cond_25
    if-eqz v7, :cond_26

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 477
    :cond_26
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    if-eqz v5, :cond_27

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 478
    :cond_27
    const-string v5, "stop"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {v24 .. v24}, Landroid/util/TimingLogger;->dumpToLog()V

    goto/16 :goto_4

    .line 405
    :cond_28
    :try_start_7
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-object v5, v0

    move-object v11, v5

    goto :goto_6

    .line 413
    .restart local v11       #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    :cond_29
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v29, v0

    add-long v27, v27, v29

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move-object v0, v5

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    move-wide/from16 v29, v0

    add-long v17, v27, v29

    .line 418
    .local v17, numModifications:J
    cmp-long v5, v17, v20

    if-gez v5, :cond_2f

    .line 419
    const/4 v13, 0x0

    move v14, v13

    .line 421
    .end local v13           #loopCount:I
    .restart local v14       #loopCount:I
    :goto_8
    move-wide/from16 v20, v17

    .line 424
    add-int/lit8 v13, v14, 0x1

    .end local v14           #loopCount:I
    .restart local v13       #loopCount:I
    const/16 v5, 0xa

    if-lt v14, v5, :cond_2a

    .line 425
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: Hit max loop count while syncing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->tooManyRetries:Z

    goto/16 :goto_7

    .line 431
    :cond_2a
    if-nez v19, :cond_2b

    if-nez v12, :cond_2b

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->hasTooManyDeletions(Landroid/content/SyncStats;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 434
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: Too many deletions were found in provider "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", not doing any more updates"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v15, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 438
    .local v15, numDeletes:J
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/SyncStats;->clear()V

    .line 439
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 440
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iput-wide v15, v5, Landroid/content/SyncStats;->numDeletes:J

    goto/16 :goto_7

    .line 445
    .end local v15           #numDeletes:J
    :cond_2b
    if-eqz v7, :cond_2c

    invoke-virtual {v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 446
    :cond_2c
    invoke-virtual {v11}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v7

    .line 447
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 449
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v7

    move-object/from16 v3, p3

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 451
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 452
    const-string v5, "Sync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "runSyncLoop: result: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2d
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 456
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 457
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: No data from client diffs merge"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 461
    :cond_2e
    const-string v5, "Sync"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 462
    const-string v5, "Sync"

    const-string v6, "runSyncLoop: made some progress, looping"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 473
    .end local v11           #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .end local v13           #loopCount:I
    .end local v17           #numModifications:J
    .end local v20           #previousNumModifications:J
    .end local v22           #readOnly:Z
    .restart local v14       #loopCount:I
    :catchall_1
    move-exception v5

    move v13, v14

    .end local v14           #loopCount:I
    .restart local v13       #loopCount:I
    goto/16 :goto_5

    .restart local v11       #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .restart local v17       #numModifications:J
    .restart local v20       #previousNumModifications:J
    .restart local v22       #readOnly:Z
    :cond_2f
    move v14, v13

    .end local v13           #loopCount:I
    .restart local v14       #loopCount:I
    goto/16 :goto_8

    .end local v11           #clientDiffs:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .end local v17           #numModifications:J
    .end local v20           #previousNumModifications:J
    .end local v22           #readOnly:Z
    :cond_30
    move v13, v14

    .end local v14           #loopCount:I
    .restart local v13       #loopCount:I
    goto/16 :goto_1
.end method

.method private sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 11
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "syncResult"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 184
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 186
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 187
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 190
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, isSyncable:I
    if-gez v1, :cond_0

    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getIsSyncable(Landroid/accounts/Account;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v8

    .line 194
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 205
    :cond_0
    :goto_1
    const-string v4, "initialize"

    invoke-virtual {p3, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v7

    .line 193
    goto :goto_0

    .line 195
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 196
    .local v0, e:Ljava/io/IOException;
    iget-object v4, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v5, v9

    iput-wide v5, v4, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1

    .line 197
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 198
    .local v0, e:Landroid/accounts/AuthenticatorException;
    iget-object v4, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v5, v9

    iput-wide v5, v4, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_1

    .line 210
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_3
    if-lez v1, :cond_1

    .line 214
    const-string v4, "force"

    invoke-virtual {p3, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 217
    .local v2, manualSync:Z
    :try_start_1
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStart(Landroid/accounts/Account;)V

    .line 218
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 219
    invoke-virtual {p0, p1, v2, p4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V

    .line 220
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v4, :cond_4

    .line 244
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 245
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 247
    :cond_4
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v4, :cond_1

    .line 248
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 249
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    goto :goto_2

    .line 223
    :cond_5
    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 224
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_7

    .line 243
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v4, :cond_6

    .line 244
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 245
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 247
    :cond_6
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v4, :cond_1

    .line 248
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 249
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    goto :goto_2

    .line 227
    :cond_7
    :try_start_3
    const-string v4, "SyncTracing"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    .line 229
    .local v3, syncTracingEnabled:Z
    if-eqz v3, :cond_8

    .line 230
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 231
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "synctrace."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 234
    :cond_8
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->runSyncLoop(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    if-eqz v3, :cond_9

    :try_start_5
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 238
    :cond_9
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z

    move-result v4

    if-nez v4, :cond_e

    move v4, v8

    :goto_3
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 239
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 240
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    .line 241
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 243
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v4, :cond_a

    .line 244
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 245
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 247
    :cond_a
    iget-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v4, :cond_1

    .line 248
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 249
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v4, v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    goto/16 :goto_2

    .line 236
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_b

    :try_start_6
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_b
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 243
    .end local v3           #syncTracingEnabled:Z
    :catchall_1
    move-exception v4

    iget-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v5, :cond_c

    .line 244
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 245
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 247
    :cond_c
    iget-boolean v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v5, :cond_d

    .line 248
    iput-boolean v7, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 249
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v5, v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    :cond_d
    throw v4

    .restart local v3       #syncTracingEnabled:Z
    :cond_e
    move v4, v7

    .line 238
    goto :goto_3

    .line 199
    .end local v2           #manualSync:Z
    .end local v3           #syncTracingEnabled:Z
    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method


# virtual methods
.method protected createSyncInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getIsSyncable(Landroid/accounts/Account;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation
.end method

.method public abstract getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .locals 11
    .parameter "stats"

    .prologue
    const-wide/16 v8, 0x0

    .line 484
    iget-wide v2, p1, Landroid/content/SyncStats;->numEntries:J

    .line 485
    .local v2, numEntries:J
    iget-wide v0, p1, Landroid/content/SyncStats;->numDeletes:J

    .line 487
    .local v0, numDeletedEntries:J
    cmp-long v7, v0, v8

    if-nez v7, :cond_0

    move-wide v4, v8

    .line 491
    .local v4, percentDeleted:J
    :goto_0
    const-wide/16 v7, 0x5

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    const-wide/16 v7, 0x14

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    const/4 v7, 0x1

    move v6, v7

    .line 494
    .local v6, tooManyDeletions:Z
    :goto_1
    return v6

    .line 487
    .end local v4           #percentDeleted:J
    .end local v6           #tooManyDeletions:Z
    :cond_0
    const-wide/16 v7, 0x64

    mul-long/2addr v7, v0

    add-long v9, v2, v0

    div-long/2addr v7, v9

    move-wide v4, v7

    goto :goto_0

    .line 491
    .restart local v4       #percentDeleted:J
    :cond_1
    const/4 v7, 0x0

    move v6, v7

    goto :goto_1
.end method

.method protected initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 0
    .parameter "cp"

    .prologue
    .line 151
    return-void
.end method

.method public abstract isReadOnly()Z
.end method

.method public newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onAccountsChanged([Landroid/accounts/Account;)V
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 3
    .parameter "account"
    .parameter "extras"
    .parameter "authority"
    .parameter "provider"
    .parameter "syncResult"

    .prologue
    .line 168
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V

    .line 170
    :try_start_0
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Sync"

    const-string v2, "Sync failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/4 v1, 0x1

    iput-boolean v1, p5, Landroid/content/SyncResult;->databaseError:Z

    goto :goto_0
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 179
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncCanceled()V

    .line 180
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncCanceled()V

    .line 181
    :cond_1
    return-void
.end method

.method public abstract onSyncEnding(Z)V
.end method

.method public abstract onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
.end method

.method public readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1
    .parameter "contentProvider"

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
.end method

.method public writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 0
    .parameter "syncData"
    .parameter "contentProvider"

    .prologue
    .line 141
    return-void
.end method
