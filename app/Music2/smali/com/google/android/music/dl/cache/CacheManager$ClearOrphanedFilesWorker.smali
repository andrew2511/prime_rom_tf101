.class final Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
.super Lcom/google/android/music/Worker;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/cache/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClearOrphanedFilesWorker"
.end annotation


# static fields
.field private static final MSG_CLEAR_ORPHANED_FILES:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/cache/CacheManager;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/cache/CacheManager;)V
    .locals 1
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    .line 377
    const-string v0, "ClearOrphanedFiles"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private handleClearOrphanedFiles()V
    .locals 27

    .prologue
    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "Should not clear orphaned files on main thread"

    invoke-static {v6, v7}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v23

    .line 405
    .local v23, store:Lcom/google/android/music/store/Store;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 406
    .local v5, readDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v26, 0x0

    .line 407
    .local v26, writeDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v24, 0x0

    .line 410
    .local v24, success:Z
    :try_start_0
    const-string v6, "MUSIC"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "LocalCopyPath"

    aput-object v9, v7, v8

    const-string v8, "LocalCopyPath IS NOT NULL"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 414
    .local v19, localFiles:Landroid/database/Cursor;
    new-instance v17, Ljava/util/HashMap;

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v6

    move-object/from16 v0, v17

    move v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 415
    .local v17, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 416
    .local v21, noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 417
    const/4 v6, 0x1

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 418
    .local v22, path:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 419
    .local v15, id:J
    new-instance v14, Ljava/io/File;

    move-object v0, v14

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 421
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 459
    .end local v14           #f:Ljava/io/File;
    .end local v15           #id:J
    .end local v17           #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19           #localFiles:Landroid/database/Cursor;
    .end local v21           #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v22           #path:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_0

    .line 460
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 462
    :cond_0
    if-eqz v26, :cond_1

    .line 463
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_1
    throw v6

    .line 423
    .restart local v14       #f:Ljava/io/File;
    .restart local v15       #id:J
    .restart local v17       #knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v19       #localFiles:Landroid/database/Cursor;
    .restart local v21       #noLocalIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v22       #path:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 426
    .end local v14           #f:Ljava/io/File;
    .end local v15           #id:J
    .end local v22           #path:Ljava/lang/String;
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 427
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 428
    const/4 v5, 0x0

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$1000(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;

    move-result-object v13

    .line 432
    .local v13, externalCacheDir:Ljava/io/File;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/music/dl/cache/CacheManager;->access$1100(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;

    move-result-object v18

    .line 435
    .local v18, localCacheDir:Ljava/io/File;
    if-eqz v18, :cond_5

    if-eqz v13, :cond_4

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v6

    if-eqz v6, :cond_5

    .line 438
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 441
    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 443
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 444
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v20, noLocalIdInClause:Ljava/lang/StringBuilder;
    invoke-static/range {v20 .. v21}, Lcom/google/android/music/utils/DbUtils;->appendIN(Ljava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 446
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 447
    const-string v6, "MusicCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "These don\'t have files on the file system anymore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_7
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    .line 451
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 452
    .local v25, values:Landroid/content/ContentValues;
    const-string v6, "LocalCopyPath"

    move-object/from16 v0, v25

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 453
    const-string v6, "MUSIC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v26

    move-object v1, v6

    move-object/from16 v2, v25

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    const/16 v24, 0x1

    .line 459
    .end local v20           #noLocalIdInClause:Ljava/lang/StringBuilder;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_8
    if-eqz v5, :cond_9

    .line 460
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 462
    :cond_9
    if-eqz v26, :cond_a

    .line 463
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 466
    :cond_a
    return-void
.end method

.method private validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 9
    .parameter
    .parameter "fileOrDir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, knownFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, absolutePath:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 474
    const-string v6, ".nomedia"

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 475
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 476
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 478
    :cond_2
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "MusicCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting orphaned file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_3
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 483
    :cond_4
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 484
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_5

    .line 485
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheManager;->access$1200()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MusicCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Neither file nor directory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_5
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 488
    .local v2, file:Ljava/io/File;
    invoke-direct {p0, p1, v2}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->validateLocalFiles(Ljava/util/HashMap;Ljava/io/File;)V

    .line 487
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 386
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 397
    const-string v0, "MusicCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_0
    return-void

    .line 388
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->handleClearOrphanedFiles()V

    .line 389
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v0}, Lcom/google/android/music/dl/cache/CacheManager;->access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    monitor-enter v0

    .line 390
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->this$0:Lcom/google/android/music/dl/cache/CacheManager;

    invoke-static {v1}, Lcom/google/android/music/dl/cache/CacheManager;->access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->quit()V

    .line 394
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startClearingOrphanedFilesAsync()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->sendEmptyMessage(I)Z

    .line 382
    return-void
.end method
