.class final Lcom/android/providers/media/MediaProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mAlbumCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mArtistCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mInternal:Z

.field final mName:Ljava/lang/String;

.field mUpgradeAttempted:Z

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->this$0:Lcom/android/providers/media/MediaProvider;

    .line 264
    const/4 v0, 0x0

    const/16 v1, 0x3ec

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 265
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 266
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    .line 267
    iput-boolean p4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    .line 268
    return-void
.end method


# virtual methods
.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    .line 290
    monitor-enter p0

    const/4 v1, 0x0

    .line 291
    .local v1, result:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 304
    :cond_0
    if-nez v1, :cond_1

    :try_start_2
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-eqz v2, :cond_1

    .line 305
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 306
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 308
    :goto_0
    monitor-exit p0

    return-object v2

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    iget-boolean v2, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    if-nez v2, :cond_0

    .line 296
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to open database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    const/4 v2, 0x0

    goto :goto_0

    .line 290
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const/4 v1, 0x0

    const/16 v2, 0x3ec

    invoke-static {p1, v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->access$800(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 276
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter "db"

    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 388
    :cond_0
    return-void

    .line 326
    :cond_1
    const-string v19, "_OBJECT_REMOVED"

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;)Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 329
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 332
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v6, file:Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 334
    .local v12, now:J
    invoke-virtual {v6, v12, v13}, Ljava/io/File;->setLastModified(J)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, databases:[Ljava/lang/String;
    array-length v4, v5

    .line 339
    .local v4, count:I
    const/4 v8, 0x3

    .line 342
    .local v8, limit:I
    const-wide v19, 0x134fd9000L

    sub-long v17, v12, v19

    .line 343
    .local v17, twoMonthsAgo:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 345
    .local v14, other:Ljava/io/File;
    const-string v19, "internal.db"

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual {v6, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 346
    :cond_2
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 347
    add-int/lit8 v4, v4, -0x1

    .line 348
    invoke-virtual {v6, v14}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 351
    add-int/lit8 v8, v8, -0x1

    .line 343
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 354
    :cond_4
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 355
    .local v15, time:J
    cmp-long v19, v15, v17

    if-gez v19, :cond_3

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 358
    const/16 v19, 0x0

    aput-object v19, v5, v7

    .line 359
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 381
    .end local v14           #other:Ljava/io/File;
    .end local v15           #time:J
    .local v9, lruIndex:I
    .local v10, lruTime:J
    :cond_5
    const/16 v19, -0x1

    move v0, v9

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v9

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 384
    const/16 v19, 0x0

    aput-object v19, v5, v9

    .line 385
    add-int/lit8 v4, v4, -0x1

    .line 366
    .end local v9           #lruIndex:I
    .end local v10           #lruTime:J
    :cond_6
    if-le v4, v8, :cond_0

    .line 367
    const/4 v9, -0x1

    .line 368
    .restart local v9       #lruIndex:I
    const-wide/16 v10, 0x0

    .line 370
    .restart local v10       #lruTime:J
    const/4 v7, 0x0

    :goto_2
    move-object v0, v5

    array-length v0, v0

    move/from16 v19, v0

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 371
    aget-object v19, v5, v7

    if-eqz v19, :cond_8

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    aget-object v20, v5, v7

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    .line 373
    .restart local v15       #time:J
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-eqz v19, :cond_7

    cmp-long v19, v15, v10

    if-gez v19, :cond_8

    .line 374
    :cond_7
    move v9, v7

    .line 375
    move-wide v10, v15

    .line 370
    .end local v15           #time:J
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mUpgradeAttempted:Z

    .line 285
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    invoke-static {p1, v0, p2, p3}, Lcom/android/providers/media/MediaProvider;->access$800(Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 286
    return-void
.end method
