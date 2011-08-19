.class Lcom/android/providers/downloads/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 260
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method private bindMediaScanner()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 391
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 393
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 396
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 398
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private scheduleAlarm(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 402
    if-nez v0, :cond_0

    .line 403
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t get alarm manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 407
    :cond_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_1

    .line 408
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheduling retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 412
    const-string v2, "com.android.providers.downloads"

    const-class v3, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/high16 v5, 0x4000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 265
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 266
    const/16 v18, 0x0

    .line 269
    .local v18, keepService:Z
    const-wide v25, 0x7fffffffffffffffL

    .line 271
    .local v25, wakeUp:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    monitor-enter v5

    .line 272
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    move-object v0, v6

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_1

    .line 273
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "multiple UpdateThreads in DownloadService"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 287
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 276
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 278
    if-nez v18, :cond_2

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/downloads/DownloadService;->stopSelf()V

    .line 281
    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v25, v6

    if-eqz v6, :cond_3

    .line 282
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->scheduleAlarm(J)V

    .line 284
    :cond_3
    monitor-exit v5

    return-void

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$302(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 287
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v5}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v22

    .line 290
    .local v22, now:J
    const/16 v19, 0x0

    .line 291
    .local v19, mustScan:Z
    const/16 v18, 0x0

    .line 292
    const-wide v25, 0x7fffffffffffffffL

    .line 293
    new-instance v16, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 295
    .local v16, idsNoLongerInDatabase:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 297
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 301
    :try_start_2
    new-instance v24, Lcom/android/providers/downloads/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 303
    .local v24, reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    const-string v5, "_id"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 304
    .local v15, idColumn:I
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_5

    .line 305
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "number of rows from downloads-db: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_b

    .line 309
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 310
    .local v13, id:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 312
    .local v17, info:Lcom/android/providers/downloads/DownloadInfo;
    if-eqz v17, :cond_9

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    move-wide/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadService;->access$500(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    .line 318
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 319
    const/16 v19, 0x1

    .line 320
    const/16 v18, 0x1

    .line 322
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->hasCompletionNotification()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 323
    const/16 v18, 0x1

    .line 325
    :cond_7
    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->nextAction(J)J

    move-result-wide v20

    .line 326
    .local v20, next:J
    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-nez v5, :cond_a

    .line 327
    const/16 v18, 0x1

    .line 308
    :cond_8
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 333
    .end local v13           #id:J
    .end local v15           #idColumn:I
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v20           #next:J
    .end local v24           #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catchall_1
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 315
    .restart local v13       #id:J
    .restart local v15       #idColumn:I
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    .restart local v24       #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v17

    goto :goto_1

    .line 328
    .restart local v20       #next:J
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-lez v5, :cond_8

    cmp-long v5, v20, v25

    if-gez v5, :cond_8

    .line 329
    move-wide/from16 v25, v20

    goto :goto_2

    .line 333
    .end local v13           #id:J
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v20           #next:J
    :cond_b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 336
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 337
    .local v13, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;J)V

    goto :goto_3

    .line 342
    .end local v13           #id:Ljava/lang/Long;
    :cond_c
    if-nez v19, :cond_e

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 344
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    move v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 345
    const/16 v19, 0x1

    .line 346
    const/16 v18, 0x1

    .line 351
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification(Ljava/util/Collection;)V

    .line 352
    if-eqz v19, :cond_10

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->bindMediaScanner()V

    .line 360
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_f
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/downloads/DownloadInfo;

    .line 361
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 364
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 365
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v17

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v5

    if-nez v5, :cond_f

    .line 369
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "scanFile failed!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    .end local v17           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_4

    .line 376
    .restart local v17       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 380
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v5, v6}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5
.end method
